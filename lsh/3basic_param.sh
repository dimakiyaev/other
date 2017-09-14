echo "Send param"
echo "---------Step1----------"
echo $@
echo "---------Step2----------"
echo -n "Enter you name: "
read name
if [ $name == $USER ]
	then
	echo "$name is logged user" 
	else echo "$name You not logged user!"
fi
echo "---------Step3----------"
while [ -n $1 ]
	do
		case "$1" in
			-u) param=$2
			shift
			break;;
		esac
		shift
	done
echo $param
if [ $param == $USER ]
	then
	echo "$param is logged user" 
	else echo "$param You not logged user!"
fi

