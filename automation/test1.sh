#!/bin/bash -l

path_run=${HOME}/CMSSW_5_3_22_patch1/src/JetMETAnalysis/JetAnalyzers/test

USERNAME=`whoami`

exec 1> /dev/null 2>&1

exec 1> ${HOME}/Brazos_CATS/automation/logs/test1.log 2>&1

path_call=$( pwd )

echo $( pwd )

rm -r /fdata/hepx/store/user/${USERNAME}/CondorG_Small_Output

cd ${path_run}

	echo $( pwd )

	rm -r CondorG_Small_Output_Brazos
	export X509_USER_PROXY=${HOME}/.x509up_u${UID}
	eval `scramv1 runtime -sh`
	source  /home/hepxadmin/CRAB_2_11_1_patch1/crab.sh

	crab -create -cfg crabSB.cfg -submit 1-10

cd ${path_call}

exit 0

)
