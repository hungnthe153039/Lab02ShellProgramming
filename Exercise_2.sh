echo "Enter 3 numbers: \c"
read a b c
min=$a
if [ $min -gt $b ]
	then min=$b
fi
if [ $min -gt $c ]
	then min=$c
fi
echo "The smallest number is $min."
