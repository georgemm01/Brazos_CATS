#!/usr/bin/env python

import subprocess

iovs = [
    'JetCorrectorParametersCollection_Winter14_V3_DATA_AK5Calo',
    'JetCorrectorParametersCollection_Winter14_V3_DATA_AK5PF',
    'JetCorrectorParametersCollection_Winter14_V3_DATA_AK5PFchs',
    #'JetCorrectorParametersCollection_Winter14_V3_DATA_AK5JPT',
    #'JetCorrectorParametersCollection_Winter14_V3_DATA_AK5TRK',
    'JetCorrectorParametersCollection_Winter14_V3_DATA_AK7Calo',
    'JetCorrectorParametersCollection_Winter14_V3_DATA_AK7PF',
	'JetCorrectorParametersCollection_Winter14_V3_DATA_AK7PFchs',
    #'JetCorrectorParametersCollection_Winter14_V3_DATA_AK7JPT',
    #'JetCorrectorParametersCollection_Winter14_V3_DATA_KT4Calo',
    #'JetCorrectorParametersCollection_Winter14_V3_DATA_KT4PF',
    #'JetCorrectorParametersCollection_Winter14_V3_DATA_KT6Calo',
    #'JetCorrectorParametersCollection_Winter14_V3_DATA_KT6PF',
    #'JetCorrectorParametersCollection_Winter14_V3_DATA_IC5Calo',
    #'JetCorrectorParametersCollection_Winter14_V3_DATA_IC5PF'
    
    
    ]

for iov in iovs :
    s = 'cmscond_list_iov -c sqlite_file:Winter14_V3_DATA.db -t ' + iov
    subprocess.call( [s, ""], shell=True )    
