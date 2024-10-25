#!/bin/bash
create_dir()
{
mkdir file1
}
if ! create_dir; then
	echo "Folder already exists"
	exit 1
fi
echo "This line will not be executed if folder exists"
