while : ; do
echo "---------------WELCOME--------------"
echo "enter first number"
read a
echo "Enter your operation"
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
read x
echo "enter second number"
read b
case $x in
1) echo "Result = $((a+b))";;
2) echo "Result = $((a-b))";;
3) echo "Result = $((a*b))";;
4) echo "Result = $((a/b))";;
*) echo "Invalid input please try again";;
esac
echo "Enter 1 to continue , anything else to stop"
read m
if [ $m -ne 1 ]
then
break
fi
done
