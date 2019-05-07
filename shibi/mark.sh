IFS=","
x=1
sum2=0
i=1
declare -A gd
gd[A]=0
gd[B]=0
gd[C]=0
gd[D]=0
gd[E]=0
gd[F]=0
while read roll admn name s1 s2 s3 s4 s5 s6 s7
do
	if [[ $i -eq 1 ]]
	then
		i=$((i+1))
		continue
	fi
	ro[x]=$roll
	total[$roll]=$((s1+s2+s3+s4+s5+s6+s7))
	sum1=`expr $sum1 + ${total[$roll]}`
	x=$((x+1))
done < $1
mean=$(bc <<< "scale=2; $sum1/($x-1)")
for i in "${ro[@]}"
do
	z=$(bc <<< ${total[$i]}-$mean)
	dev[i]=$(bc <<< $z*$z)
	sum2=$(bc <<< $sum2+${dev[$i]})
done
va=$(bc <<< "scale=2; $sum2/($x-1)")
sd=$(bc <<< "scale=0; sqrt($va)")
for i in "${ro[@]}"
do
	z=${total[$i]}
	p=$(bc <<< $mean+$sd+$sd)
	q=$(bc <<< $mean+$sd)
	s=$(bc <<< $mean-$sd)
	t=$(bc <<< $mean-$sd-$sd)
	if [[ ${z%%.*} -ge ${p%%.*} ]]
	then
		gd[A]=`expr ${gd[A]} + 1`
	elif [[ ${z%%.*} -ge ${q%%.*} ]]
	then
		gd[B]=`expr ${gd[B]} + 1`
	elif [[ ${z%%.*} -ge ${mean%%.*} ]]
	then
		gd[C]=`expr ${gd[C]} + 1`
	elif [[ ${z%%.*} -ge ${s%%.*} ]]
	then
		gd[D]=`expr ${gd[D]} + 1`
	elif [[ ${z%%.*} -ge ${t%%.*} ]]
	then
		gd[E]=`expr ${gd[E]} + 1`
	else
		gd[F]=`expr ${gd[F]} + 1`
	fi
done
printf "Mean of total = $mean \nVarience = $va \nStandard Deviation = $sd\n"
printf "Grade A >= $p \nGrade B >= $q \nGrade C >= $mean \nGrade D >= $s \nGrade E >= $t \nGrade F <  $t \n"
for k in "${!gd[@]}"; do
	echo "       |"
	printf "  $k    |"
	i=0
	while [ $i -lt ${gd[$k]} ]
	do
		printf " * "
		i=$((i+1))
	done
	echo""
	echo "       |"
done
