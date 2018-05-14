echo -n "Enter a no: "
read no
for((i=2;i<=no/2;i++))
do
	if [ `expr $no % $i` -eq 0 ]
	then
		echo "$no is not prime"
		exit 1
	fi
done
echo "$no is prime"
