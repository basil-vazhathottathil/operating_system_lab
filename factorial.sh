echo "Enter the number"
read a
factorial=1  # Initialize factorial to 1
for ((i=a; i>0; i--))
do 
    factorial=$(($factorial*$i))
done 
echo "The factorial is $factorial"
