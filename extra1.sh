# write a shell script to perform the following operations
# x=(a/b)*(c/d)

echo -n "Enter 4 numbers: "
read a b c d
x=`expr(( $a / $b ) \* ( $c / $d ))`
echo "Result: $x" 
