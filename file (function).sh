function filen {
	read -p "Enter filename: " fn
	if [ -f $fn ]
	then
		echo -n "$fn was modified on "
		date -r $fn
	else
		echo "$fn doesn't exist"
	fi
}
filen
