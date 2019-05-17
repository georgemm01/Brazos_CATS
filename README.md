# Brazos CATS
CATs Tests for the CMS T3_US_TAMU at the Brazos Cluster
___

These tests will check on the clusters capability of submit jobs locally, through condor via the CE, and through glideIns with the CMS VO.

You must have a CMS account, be registered in the CMS VO, and have your certificate/DN mapped so that you are able to initialize your proxy. For instructions about that [see here].(http://mitchcomp.physics.tamu.edu/tier3/newuser/new_user.php#sec2). 


##  Clone the repository

Assuming you will be working in `/fdata/hepx/store/user/<username>`, clone the repo, and go to the parent directory:
```
git clone https://github.com/georgemm01/Brazos_CATS.git
$ cd Brazos_CATS
```


## For CRAB2 Tests

##### 1. Make sure your .barsh_profile has the follwoing:
```
umask 0022
export VO_CMS_SW_DIR=/cvmfs/cms.cern.ch
export SCRAM_ARCH=slc6_amd64_gcc472   #choose the desired scram_arch
source $VO_CMS_SW_DIR/cmsset_default.sh
source /home/hepxadmin/CRAB_2_11_1_patch1/crab.sh
```

If it didn't have it already, make sure to source it, or export those variables manually before continuing. 

##### 2. Setup your environment for the CRAB2 CMSSW version. It's good practice to know how to source CMSSW versions, so we'll add a couple unnecessary, but instructive steps (the first two). (Asuming you are already in `Brazos_CATS/`)
```
$ cmsrel CMSSW_5_3_22_patch1
$ cp -r CRAB2tests/CMSSW_5_3_22_patch1/* CMSSW_5_3_22_patch1/.
$ cd CMSSW_5_3_22_patch1/src
$ cmsenv
```

##### 3. Initialize your proxy. 
```
$ voms-proxy-init -voms cms -out ${HOME}/.x509up_u${UID} 
$ export X509_USER_PROXY=${HOME}/.x509up_u${UID} 
```

##### 4. Submit the CATs tests. Just go to the location and crab-submit them. There are 8 of them, 4 to submit via condor, 4 directly to slurm. Each set of 4 contains two small and two large output tests, witing to Brazos or FNAL. 
```
$ cd JetMETAnalysis/JetAnalyzers/test 
$ crab -create -cfg crabSB.cfg -submit 1-10  # create the jobs and submit them (this could be split into 2 commands but its faster to -create and -submit at the same time) 
$ crab -status -c CondorG_Small_Output_Brazos # ask CMS about the status of your jobs
$ crab -getoutput -c CondorG_Small_Output_Brazos # retrieve the output-status of your jobs (usually not needed)
```

The 8 tests are: 

- Condor: 

        - Small and Large output to Brazos: `crabSB.cfg crabLB.cfg`
        - Small and Large output to FNAL: `crabSF.cfg crabLF.cfg`
        
- SLURM:

        - Small and Large output to Brazos: `crabslurmSB.cfg crabslurmLB.cfg`
        - Small and Large output to FNAL: `crabslurmSF.cfg crabslurmLF.cfg`
    
    
##### 5. Watchout, you need to be able to log into FNAL machines to write output there. Which means you need to have kerberos credentials. [See here](http://mitchcomp.physics.tamu.edu/tier3/newuser/new_user.php#sec7)


## For CRAB3 Tests

These test is extracted from the [CMSSW Tutorial for CRAB3](https://twiki.cern.ch/twiki/bin/view/CMSPublic/WorkBookCRAB3Tutorial).

##### 1. First make sure that your CERN username is in the [GlideIn local authorized list](https://gitlab.cern.ch/SITECONF/T3_US_TAMU/blob/master/GlideinConfig/local-users.txt). If it isn't [contact us](mailto:mitchcomp_help@physics.tamu.edu). 

##### 2. Export and source the relevant libraries (note that they change from the CRAB2 ones, so make sure to not mix them)
```
$ export VO_CMS_SW_DIR=/cvmfs/cms.cern.ch
$ export SCRAM_ARCH=slc6_amd64_gcc491
$ source $VO_CMS_SW_DIR/cmsset_default.sh
$ source /cvmfs/cms.cern.ch/crab3/crab.sh
```
##### 3. Source the CMSSW version in use 
```
$ cd Brazos_CATS/CRAB3tests
$ cmsrel CMSSW_7_3_5_patch2   
$ cd CMSSW_7_3_5_patch2/src
$ cmsenv  
$ cd ..
$ cp -r src/* CMSSW_7_3_5_patch2/src/.
```

##### 4. Initialize your proxy.
```
$ voms-proxy-init -voms cms -out ${HOME}/.x509up_u${UID} 
$ export X509_USER_PROXY=${HOME}/.x509up_u${UID}
```

##### 5. Go to the submission area and submit your jobs
```
$ cd CMSSW_7_3_5_patch2/src/submission
$ crab submit -c crabConfig_tutorial_MC_analysis_def.py
```

If things worked, the output on your screen should look like this: 
```
Will use CRAB configuration file crabConfig_tutorial_MC_analysis_def.py
Importing CMSSW configuration ../analysiscode/pset_tutorial_analysis.py
Finished importing CMSSW configuration ../analysiscode/pset_tutorial_analysis.py
Sending the request to the server
Success: Your task has been delivered to the CRAB3 server.
Task name: 170208_153029:moralesm_crab_CRAB3_Small_Output_Brazos_170208093011
Please use 'crab status' to check how the submission process proceeds.
Log file is /home/georgemm01/CRAB3-tutorial/CMSSW_7_3_5_patch2/src/crab_jobs/crab_CRAB3_Small_Output_Brazos_170208093011/crab.log
```

