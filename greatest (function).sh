function great {
	read -p "Enter 3 no's: " no1 no2 no3
	if [ $no1 -gt $no2 -a $no1 -gt $no3 ]
	then
		echo "$no1 is greatest"
	elif [ $no2 -gt $no1 -a $no2 -gt $no3 ]
	then
		echo "$no2 is greatest"
	else
		echo "$no3 is greatest"
	fi
}
great
