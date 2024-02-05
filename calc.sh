echo "enter the 2 numbers"
read a 
read b
echo -e "choose operation \n 1.+ \n 2.- \n 3.* \n 4. /"
read choice
case $choice in
	1) echo "the sum : $(($a + $b))" ;;
	2) echo "the difference : $(($a-$b))" ;;
	3) echo "the product : $(($a*$b))";;
	4) echo "the quotient : $(($a / $b))";;
	*)echo "invalid choice";;
esac
