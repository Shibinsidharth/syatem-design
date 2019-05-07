echo "Enter file name"
read a
echo "enter starting line"
read b
echo "enter last line"
read c
tail -n +$b $a | head -n $((c-b+1))
