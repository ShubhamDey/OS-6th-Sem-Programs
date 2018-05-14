function calc {
	echo -e -n "1.Addition\n2.Subtraction\n3.Multiplication\n4.Division\n5.Exit\nChoice: "
	read ch
	read -p "Enter 1st no: " a
	read -p "Enter 2nd no: " b
	if [ $ch -eq 1 ]
	then
		return $[$a + $b]
	elif [ $ch -eq 2 ]
	then
		return $[$a - $b]
	elif [ $ch -eq 3 ]
	then
		return $[$a \* $b]
	elif [ $ch -eq 4 ]
	then
		return $[$a / $b]
	else
		exit 1
	fi
}
calc
res=$?
echo "Result : $res"
