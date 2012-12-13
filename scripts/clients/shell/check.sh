
#!/bin/bash 
#the local monitor scripts with all items


ROOTDIR=`pwd`
script_process="mon_process.sh"
script_process_list="get_process_list.sh"
PROCESS_ID=(
	2001
	2002
	)
desc2001="java,kado"
desc2002="java,quartz"


#echo ${ROOTDIR}"/"${script_process}
pfile=${ROOTDIR}"/"${script_process}
plfile=${ROOTDIR}"/"${script_process_list}

for ((i=0;i<${#PROCESS_ID[*]};i++))
do 
#bianliang yinyong 
 #eval desc="$""desc"${PROCESS_ID[$i]}
  #echo -e "${PROCESS_ID[$i]}\n"
  #echo $desc 
   desc=`sh ${plfile} ${PROCESS_ID[$i]}`
   sh ${pfile} ${desc} ${PROCESS_ID[$i]}
done
