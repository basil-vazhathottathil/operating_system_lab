echo "Enter the limit"
read limit
a=0
b=1
fibonacci=0
echo -e "\n\n"
echo "$a "
echo "$b"
for ((i=2; i<=limit; i++))
	do
		    fibonacci=$(($a+$b))
		    echo "$fibonacci"
		    a=$b
		    b=$fibonacci
done
