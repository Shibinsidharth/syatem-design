echo "Enter file name"
read a
echo "enter starting line"
read b
echo "enter last line"
read c
x=1
while read LINE
do
if [[ $x -gt $b && $x -lt $c ]]
then
echo $LINE
fi
x=$((x+1))
done < $a
