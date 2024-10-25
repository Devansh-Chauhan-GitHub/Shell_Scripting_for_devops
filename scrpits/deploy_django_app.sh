#!/bin/bash
clone_app()
{
echo "Cloning Django app....."
git clone https://github.com/LondheShubham153/django-notes-app.git
}
install_req()
{
	echo "Installing Dependencies....."
        sudo apt-get install docker.io nginx -y
}
required_restarts()
{
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}
deploy()
{
docker build -t notes-app .
docker run -d -p 8000:8000 notes-app:latest
}
echo "*******************DEPLOYMENT STARTED****************"

if ! clone_app; then
	echo "The directory already exists"
	cd django-notes-app
fi

if ! install_req; then
	echo "Installation failed"
	exit 1
fi

if ! required_restarts; then
	echo "System Fault"
	exit 1
fi

if ! deploy; then
	echo "Deployment Failed"
	# sendmail
	exit 1
fi

echo "********************DEPLOYMENT DONE*******************"
