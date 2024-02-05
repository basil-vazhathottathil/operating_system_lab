echo "enter 2 numbers"
read a 
read b
if (($a == $b))
	then
	echo "they are equal"
	elif(($a < $b))
	then
		echo "$b is greater"
	else 
		echo "$a is greater"
fi
