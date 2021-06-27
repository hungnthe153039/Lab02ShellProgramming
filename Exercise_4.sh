echo "Enter n: \c"
read n

sum=0
echo "Result: \c"
for i in `seq 1 $n)`
do	
	sum=$((sum+i))
	if [ $n -ne $i ]
	then
		echo "$i+\c"
	fi
done
echo "$n = $sum"
