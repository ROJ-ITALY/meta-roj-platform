#!/bin/bash

pip3 list | grep cpppo
if [ $? -eq 0 ]; then
	echo "cpppo is installed."
else
	echo "Installing cpppo..."
	pip3 install cpppo
fi
