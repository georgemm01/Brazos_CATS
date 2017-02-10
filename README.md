# Brazos CATS
CATs Tests for the CMS T3_US_TAMU at the Brazos Cluster
___

These tests will check on the clusters capability of submit jobs locally, through condor via the CE, and through glideIns with the CMS VO.


##  Clone the repository

Assuming you will be working in `/fdata/hepx/store/user/<username>`, clone the repo, and go to the parent directory:
```
git clone https://github.com/georgemm01/Brazos_CATS.git
$ cd Brazos_CATS
```


## For CRAB2 Jobs

1. Make sure your .barsh_profile has the follwoing:
```
umask 0022
export VO_CMS_SW_DIR=/cvmfs/cms.cern.ch
export SCRAM_ARCH=slc6_amd64_gcc472   #choose the desired scram_arch
source $VO_CMS_SW_DIR/cmsset_default.sh
source /home/hepxadmin/CRAB_2_11_1_patch1/crab.sh
```

If it didn't have it already, make sure to source it, or export those variables manually before continuing. 

2. Setup your environment for the CRAB2 CMSSW version. It's good practice to know how to source CMSSW versions, so we'll add a couple unnecessary, but instructive steps (the first two). (Asuming you are already in `Brazos_CATS/`)
```
$ cmsrel CMSSW_5_3_22_patch1
$ cp -r CRAB2tests/CMSSW_5_3_22_patch1/* CMSSW_5_3_22_patch1/.
$ cd CMSSW_5_3_22_patch1/src
$ cmsenv
```

3. Initialize your proxy. You must have a CMS account, be registered in the CMS VO, and have your certificate/DN mapped. For instructions about that [see here](http://mitchcomp.physics.tamu.edu/tier3/newuser/new_user.php#sec2). 
```
$ voms-proxy-init -voms cms -out ${HOME}/.x509up_u${UID} 
$ export X509_USER_PROXY=${HOME}/.x509up_u${UID} 
```

3. Submit the CATs tests. Just go to the location and crab-submit them. There are 8 of them, 4 to submit via condor, 4 directly to slurm. Each set of 4 contains two small and two large output tests, witing to Brazos or FNAL. 
```
$ cd JetMETAnalysis/JetAnalyzers/test 
$ crab -create -cfg crabSB.cfg -submit 1-10  # create the jobs and submit them (this could be split into 2 commands but its faster to -create and -submit at the same time) 
$ crab -status -c CondorG_Small_Output_Brazos # ask CMS about the status of your jobs
$ crab -getoutput -c CondorG_Small_Output_Brazos # retrieve the output-status of your jobs (usually not needed)
```

The 8 tests are: 
- Condor: 
    -Small and Large output to Brazos: `crabSB.cfg crabLB.cfg`
    -Small and Large output to FNAL: `crabSF.cfg crabLF.cfg`
- SLURM:
    -Small and Large output to Brazos: `crabslurmSB.cfg crabslurmLB.cfg`
    -Small and Large output to FNAL: `crabslurmSF.cfg crabslurmLF.cfg`
    
4. Watchout, you need to be able to log into FNAL machines to write output there. Which means you need to have kerberos credentials. [See here](http://mitchcomp.physics.tamu.edu/tier3/newuser/new_user.php#sec7)


