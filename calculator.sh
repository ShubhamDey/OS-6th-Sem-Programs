echo -e -n "1.Addition\n2.Subtraction\n3.Multiplication\n4.Division\n5.Exit\nChoice: "
read ch
echo -n "Enter 1st no: "
read a
echo -n "Enter 2nd no: "
read b
if [ $ch -eq 1 ]
then
	res=`expr $a + $b`
elif [ $ch -eq 2 ]
then
	res=`expr $a - $b`
elif [ $ch -eq 3 ]
then
	res=`expr $a \* $b`
elif [ $ch -eq 4 ]
then
	res=`expr $a / $b`
else
	exit 1
fi
echo -n "Result: $res"
