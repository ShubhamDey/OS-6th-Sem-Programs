echo -n "Enter a no: "
read no
fact=1
for((i=1;i<=no;i++))
do
	fact=`expr $fact \* $i`
done
echo "Factorial: $fact"
