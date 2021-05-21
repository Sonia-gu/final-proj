for vel in 10 20 
do 
echo "640">~/project/nemd/data$vel.xyz

temp1=$(awk -f get_coord.sh ~/project/nemd/case_$vel/dump.nemd2)
echo "$temp1">>~/project/nemd/data$vel.xyz

done
