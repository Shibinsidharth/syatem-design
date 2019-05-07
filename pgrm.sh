
file2="sample2.txt"
file="sample.txt"
while IFS= read line
do
#if [ $line == "shibin" ]
#then
#echo "1111" >> file2
#else
#echo "$line" >> file2
#fi
done <"$file"
cat sample2.txt sample.txt


