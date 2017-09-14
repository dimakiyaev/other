#!/bin/bash
echo "My path is: $PWD"
echo "My name is: $USER"
echo "My dir $(pwd)"
echo "--------------------"
if pwd
then
echo "Its work"
fi
echo "--------------------"
if [ -d $HOME/testdir ]
then echo "Directory exists"
else 
echo "Directory not exists"
mkdir $HOME/testdir
fi
