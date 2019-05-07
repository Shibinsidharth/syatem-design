arr=$(awk -F "," 'tm=$4+$5 {print "["$1"]="tm}' student2.csv)
echo "${arr[2]}"
