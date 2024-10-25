for (( i = 1; i <= $6; i++ ))
do
  file="$1_d$2_c$3_t$4_r$5_$i"
  full="full_$file.txt"
  hist="hist_$file.txt"
  profile="profile_$file.jfr"
  profile_path="./profile/$profile "
  wrk -s "$1.lua" -d $2 -c $3 -t $4 -R $5 -L http://localhost:8081 > $full &
  asprof -d $2 -f $profile_path -e cpu,alloc LaunchService
  cp $full "./full/$full"
  cat $full | tail -n +19 | head -n -7 > $hist
  cp $hist "./histogram/$hist"
  rm $full $hist
done