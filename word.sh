l=0
word=0
n=0
c=0
sm=0
cap=0
sp=0
while read line ; do
	for ((i=0; i<${#line}; i++)); do
		if [[ "${line:$i:1}" = [[:lower:]] ]] 
		then
			sm=$((sm+1))
		elif [[ "${line:$i:1}" = [[:upper:]] ]] 
		then
			cap=$((cap+1))
		elif [[ "${line:$i:1}" = [0-9] ]] 
		then
			n=$((n+1))
		else
			sp=$((sp+1))			
		fi
			c=$((c+1))
		if [[ "${line:$i:1}" = " " ]]
		then
			if [[ "${line:$i+1:1}" != " " ]]
			then
			word=$((word+1))
			fi
		fi
	done
	if [[ ${#line} != 0 ]]
	then
		word=$((word+1))
	fi
	l=$((l+1))
done < $1 
echo " total Lines : $l"
echo " total charecters : $c"
echo " Block letters : $cap"
echo " small letters : $sm"
echo " total digits : $n"
echo " special charecters : $sp"
echo " Total words : $word"
