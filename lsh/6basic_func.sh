#!/bin/bash
# Working with func

echo -- Step 1 simple def
    function test {
echo "This is func"
}

for ((i=1;i<10;i++))
do
    echo "iteration $i"
    test
done
echo "END"

#-------------------
echo "-- Step 2 using return"
function test_return {
    read -p "Enter a value: " value
    echo "adding value"
    return $(( $value + 10 ))
}
test_return
echo "The new value is $?"

#-------------------
echo "-- Step 3 using return with variable"

function test_return_var {
    read -p "Enter a value: " value
    echo "adding value"
    echo $(( $value + 10 ))
}
result=$(test_return_var)
echo "The value is $result"

#-------------------
echo "-- Step 4 using func with args"
#Могут использовать поционные параметры: $0, $1, $2, etc...
function addnum {
if [ $# -eq 0 ] || [ $# -gt 2 ]
then
    echo -1
elif [ $# -eq 1 ]
then
    echo $(( $1 + $1 ))
else
    echo $(( $1 + $2 ))
fi
}
echo -n "Adding 10 and 15: "
value=$(addnum 10 15)
echo $value
echo -n "Adding one number: "
value=$(addnum 10)
echo $value
echo -n "Adding no numbers: "
value=$(addnum)
echo $value
echo -n "Adding three numbers: "
value=$(addnum 10 15 20)
echo $value

#------------------
echo --Step 5 using command promt and args
function myfunc {
echo $(( $1 + $2 ))
}
if [ $# -eq 2 ]
then
    value=$(myfunc $1 $2)
    echo "The result is $value"
else
    echo "Usage: myfunc a b"
fi


