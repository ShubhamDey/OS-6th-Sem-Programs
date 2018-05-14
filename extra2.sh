# write a shell script to find out whether the number is odd or even
echo -n "Enter a number: "
read a
if [ `expr $a % 2` -eq 0 ]
then
	echo "$a is even"
else
	echo "$a is odd"
fi
