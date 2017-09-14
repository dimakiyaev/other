#!/bin/bash
echo "Input/Output"
echo "--------------Step 1-----------"
exec 2>myerror 
echo "This is the start of the script" 
echo "now redirecting all output to another location" 
exec 1>myfile 
echo "This should go to the myfile file" 
echo "and this should go to the myerror file" >&2 
echo "--------------Step 22-----------"
