

hostid=1001
checkcpu="1"
moniter_url="http://localhost/check_"


arr=(
`top -b -n 1 | grep Cpu  |awk '{print $2,$3,$4,$5,$6}'|grep -o '[0-9.]\{1,6\}'|sed -e /^$/d`
)
   us=${arr[0]}
   sy=${arr[1]}
   ni=${arr[2]}
   id=${arr[3]}
   wa=${arr[4]}
if [ $checkcpu -eq "1" ];then
curl $moniter_url"cpu?id="$hostid"&us="$us"&sy="$sy"&ni="$ni"&cpuid="$id"&wa="$wa
echo  $moniter_url"cpu?id="$hostid"&us="$us"&sy="$sy"&ni="$ni"&cpuid="$id"&wa="$wa

echo "ok"
else 

echo "cpu off"
fi
