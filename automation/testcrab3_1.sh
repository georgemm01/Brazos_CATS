#!/bin/bash -l
USERNAME=`whoami`

exec 1> /dev/null 2>&1
exec 1> ${HOME}/Brazos_CATS/automation/logs/testcrab3_1.log 2>&1

echo "#########################################"
echo "# TAMU BRAZOS CRAB3 Routine Tests CATS  #"
echo "#                                   JM  #" 
echo "#########################################"
echo " "
echo " " 

echo "Defining basic environment (SCRAM_ARCH, and sourcing cmssw)."
export SCRAM_ARCH=slc6_amd64_gcc491 
source /cvmfs/cms.cern.ch/cmsset_default.sh 
source /cvmfs/cms.cern.ch/crab3/crab.sh
#source /cvmfs/cms.cern.ch/crab3/slc6_amd64_gcc493/cms/crabclient/3.3.1611/etc/init-light.sh

echo " "

echo "Going to cmssw area:"
cmssw_area=${HOME}/CRAB3-tutorial/CMSSW_7_3_5_patch2/src
cd $cmssw_area
echo $( pwd )
#cmsenv
echo " "

echo "Exporting VOMS PROXY certificate"
path_run=${cmssw_area}/submission
export X509_USER_PROXY=${HOME}/.x509up_u${UID}
echo " "

echo "Removing old submission info"
path_call=$( pwd )
echo $( pwd )
rm -r crab_jobs/crab_CRAB3_Small_Output_Brazos

echo "Going to Run Path"
cd ${path_run}
echo $( pwd )
echo "..."
echo " "
echo "Submitting CRAB3 Test"
echo ">>>>>>>>>>>>>>>>>>>>>"
echo " "
eval `scramv1 runtime -sh`
crab submit -c crabConfig_tutorial_MC_analysis_def.py
echo ">>>>>>>>>>>>>>>>>>>>> "
echo " "
echo "Done!" 
echo " "

exit 0
