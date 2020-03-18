declare -a integer=(
    10,
    15
)

for ((i=0; i<${integer[@]}; i++)); do
   echo "$i"
done