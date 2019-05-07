declare -A arr
arr+=`awk -F "," 'tm=$4+$5 {print "(["$1"]="tm")"}' student2.csv`

for i in "${!arr[@]}"
do
echo "${i}=${arr[$i]}"
done
