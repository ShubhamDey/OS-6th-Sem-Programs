echo -n "Enter a no: "
read n
a=0
echo -e -n "$a\t"
b=1
echo -e -n "$b\t"
for((i=0;i<n;i++))
do
	next=`expr $a + $b`
	echo -e -n "$next\t"
	a=$b
	b=$next
done
