for i in "$@"
do 
cat $1 > $2 
shift
done
