#!/bin/bash -l

USERNAME=`whoami`

path_run=${HOME}/CMSSW_5_3_22_patch1/src/JetMETAnalysis/JetAnalyzers/test

exec 1> /dev/null 2>&1

exec 1> ${HOME}/Brazos_CATS/automation/logs/testsl1.log 2>&1

path_call=$( pwd )

echo $( pwd )

rm -r /fdata/hepx/store/user/${USERNAME}/SLURM_Small_Output_Brazos

cd ${path_run}

	echo $( pwd )

	rm -r hiMassTau_patProd.pyc crab.history SLURM_Small_Output_Brazos
	export X509_USER_PROXY=${HOME}/.x509up_u${UID}
	eval `scramv1 runtime -sh`
	source  /home/hepxadmin/CRAB_2_11_1_patch1/crab.sh

	crab -create -cfg crabslurmSB.cfg -submit 1-5 

cd ${path_call}

exit 0

)
