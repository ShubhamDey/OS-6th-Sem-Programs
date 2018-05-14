# write a shell script to find out the number of odd digits from one number
echo -n "Enter a number: "
read a
c=0
while [ $a -gt 0 ]
do
	r=`expr $a % 10`
	a=`expr $a / 10`
	e=`expr $r % 2`
	if [ $e -ne 0 ]
	then
		c=`expr $c + 1`
	fi
done
echo "Odd digits: $c"
