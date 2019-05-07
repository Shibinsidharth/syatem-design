echo "Enter first file"
read a
echo "Enter second file"
read b
if cmp $a $b
then
cat $a | rev > file3.txt
#perl -lne 'print scalar reverse' < $a > file3.txt
else
echo "b"
tr '[:lower:]' '[:upper:]' < $a > file3.txt
fi
