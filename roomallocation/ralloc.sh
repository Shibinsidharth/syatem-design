IFS=","
x=1
c1=0
c2=0
c3=0
rno=1001
while read roll name
do
	s1[x]=$roll
	x=$((x+1));
	c1=$((c1+1));
done < $1
x=1
while read roll name
do
	s2[x]=$roll
	x=$((x+1));
	c2=$((c2+1));
done < $2
x=1
while read roll name
do
	s3[x]=$roll
	x=$((x+1));
	c3=$((c3+1));
done < $3
i=1
j=1
k=1
while [ $c1 -gt 0 ] || [ $c2 -gt 0 ] || [ $c3 -gt 0 ]
do
	echo "    Room no :  $rno"
	if [ $c1 -lt $c2 ] && [ $c1 -lt $c3 ]
	then
		rcount=0

		while [ $c2 -gt 0 ] && [ $c3 -gt 0 ] && [ $rcount -lt 40 ]
		do
			z=$((rcount%2))
			if [ $z -eq 0 ]
			then 
				printf "${s2[$j]}   "
				((j++))
				((rcount++))
				((c2--))
				if [ $c2 -eq 0 ]
				then
					g=1
				fi
			else
				printf "${s3[$k]}\n"
				((k++))
				((rcount++))
				((c3--))
			fi	
		done
		if [ $c3 -eq 0 ]
		then
			while [ $rcount -lt 40 ]
			do
				printf "${s2[$j]}   nil  \n"
				((j++))
				((rcount++))
				((rcount++))
				((c2--))
				if [ $c2 -eq 0 ]
				then
					break
				fi
			done
		elif [ $c2 -eq 0 ]
		then
			while [ $rcount -lt 40 ]
			do
				if [ $g -eq 1 ]
				then
					printf "${s3[$k]}   \n"	
					g=2
				else				
					printf "nil   ${s3[$k]}   \n"
				fi
				((k++))
				((rcount++))
				((rcount++))
				((c3--))
				if [ $c3 -eq 0 ]
				then
					break
				fi
			done
		fi
	elif [ $c2 -lt $c1 ] && [ $c2 -lt $c3 ]
	then
		rcount=0
		while [ $c1 -gt 0 ] && [ $c3 -gt 0 ] && [ $rcount -lt 40 ]
		do
			z=$((rcount%2))
			if [ $z -eq 0 ]
			then 
				printf "${s1[$i]}   "
				((i++))
				((rcount++))
				((c1--))
				if [ $c1 -eq 0 ]
				then
					g=1
				fi
			else
				printf "${s3[$k]}\n"
				((k++))
				((rcount++))
				((c3--))
			fi	
		done
		if [ $c3 -eq 0 ]
		then
			while [ $rcount -lt 40 ]
			do
				printf "${s1[$i]}   nil  \n"
				((i++))
				((rcount++))
				((rcount++))
				((c1--))
				if [ $c1 -eq 0 ]
				then
					break
				fi
			done
		elif [ $c1 -eq 0 ]
		then
			while [ $rcount -lt 40 ]
			do
				if [ $g -eq 1 ]
				then
					printf "${s3[$k]}   \n"	
					g=2
				else				
					printf "nil   ${s3[$k]}   \n"
				fi
				((k++))
				((rcount++))
				((rcount++))
				((c3--))
				if [ $c3 -eq 0 ]
				then
					break
				fi
			done
		fi
	else
		rcount=0
		while [ $c1 -gt 0 ] && [ $c1 -gt 0 ] && [ $rcount -lt 40 ]
		do
			z=$((rcount%2))
			if [ $z -eq 0 ]
			then 
				printf "${s1[$i]}   "
				((i++))
				((rcount++))
				((c1--))
				if [ $c1 -eq 0 ]
				then
					g=1
				fi
			else
				printf "${s2[$j]}\n"
				((j++))
				((rcount++))
				((c2--))
			fi	
		done
		if [ $c2 -eq 0 ]
		then
			while [ $rcount -lt 40 ]
			do
				printf "${s1[$i]}   nil \n"
				((i++))
				((rcount++))
				((rcount++))
				((c1--))
				if [ $c1 -eq 0 ]
				then
					break
				fi
			done
		elif [ $c1 -eq 0 ]
		then
			while [ $rcount -lt 40 ]
			do
				if [ $g -eq 1 ]
				then
					printf "${s2[$j]}   \n"	
					g=2
				else				
					printf "nil   ${s2[$j]}   \n"
				fi
				((j++))
				((rcount++))
				((rcount++))
				((c2--))
				if [ $c2 -eq 0 ]
				then
					break
				fi
			done
		fi
	fi
	((rno++))
done
