import FWCore.ParameterSet.Config as cms 
process = cms.Process('jecdb') 
process.load('CondCore.DBCommon.CondDBCommon_cfi') 

eraStr = "Winter14_V5_DATA"
#eraStr = "ConeSizeTest_MC"
#eraStr = "Legacy11_V1_DATA"
#eraStr = "AK5To4_V1_MC"
#eraStr = "CSA14_V4_DATA"

process.CondDBCommon.connect = 'sqlite_file:'+eraStr+'.db' 
process.maxEvents = cms.untracked.PSet(input = cms.untracked.int32(1)) 
process.source = cms.Source('EmptySource')

process.PoolDBOutputService = cms.Service('PoolDBOutputService', 
   process.CondDBCommon, 
   toPut = cms.VPSet( 
      cms.PSet(
         record = cms.string('AK5CaloHLT'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK5CaloHLT'), 
         label  = cms.string('AK5CaloHLT') 
      ),
      cms.PSet(
         record = cms.string('AK5PFHLT'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK5PFHLT'), 
         label  = cms.string('AK5PFHLT') 
      ),
      cms.PSet(
         record = cms.string('AK5PFchsHLT'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK5PFchsHLT'), 
         label  = cms.string('AK5PFchsHLT') 
      ),
      cms.PSet(
         record = cms.string('AK5Calo'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK5Calo'), 
         label  = cms.string('AK5Calo') 
      ),
      cms.PSet(
         record = cms.string('AK5PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK5PF'), 
         label  = cms.string('AK5PF') 
      ),
      cms.PSet(
         record = cms.string('AK5PFchs'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK5PFchs'), 
         label  = cms.string('AK5PFchs') 
      ),
      cms.PSet(
         record = cms.string('AK5JPT'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK5JPT'), 
         label  = cms.string('AK5JPT') 
      ),
      cms.PSet(
         record = cms.string('AK5TRK'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK5TRK'), 
         label  = cms.string('AK5TRK') 
      ),
      cms.PSet(
         record = cms.string('AK7Calo'),
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK7Calo'), 
         label  = cms.string('AK7Calo') 
      ),
      cms.PSet(
         record = cms.string('AK7PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK7PF'), 
         label  = cms.string('AK7PF') 
      ),
      cms.PSet(
         record = cms.string('AK7PFchs'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK7PFchs'), 
         label  = cms.string('AK7PFchs') 
      ),
      cms.PSet(
         record = cms.string('AK7JPT'),                           
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK7JPT'),
         label  = cms.string('AK7JPT')                                          
      ),
      cms.PSet(
         record = cms.string('IC5Calo'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_IC5Calo'), 
         label  = cms.string('IC5Calo') 
      ),
     cms.PSet(
         record = cms.string('IC5PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_IC5PF'), 
         label  = cms.string('IC5PF') 
      ),
      cms.PSet(
         record = cms.string('KT4Calo'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_KT4Calo'), 
         label  = cms.string('KT4Calo') 
      ),
      cms.PSet(
         record = cms.string('KT4PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_KT4PF'), 
         label  = cms.string('KT4PF') 
      ),
      cms.PSet(
         record = cms.string('KT6Calo'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_KT6Calo'), 
         label  = cms.string('KT6Calo') 
      ),
      cms.PSet(
         record = cms.string('KT6PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_KT6PF'), 
         label  = cms.string('KT6PF') 
      ),
	  cms.PSet(
         record = cms.string('AK1PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK1PF'), 
         label  = cms.string('AK1PF') 
      ),
	  cms.PSet(
         record = cms.string('AK2PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK2PF'), 
         label  = cms.string('AK2PF') 
      ),
	  cms.PSet(
         record = cms.string('AK3PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK3PF'), 
         label  = cms.string('AK3PF') 
      ),
	  cms.PSet(
         record = cms.string('AK4PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK4PF'), 
         label  = cms.string('AK4PF') 
      ),
	  cms.PSet(
         record = cms.string('AK6PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK6PF'), 
         label  = cms.string('AK6PF') 
      ),
	  cms.PSet(
         record = cms.string('AK8PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK8PF'), 
         label  = cms.string('AK8PF') 
      ),
	  cms.PSet(
         record = cms.string('AK9PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK9PF'), 
         label  = cms.string('AK9PF') 
      ),
	  cms.PSet(
         record = cms.string('AK10PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK10PF'), 
         label  = cms.string('AK10PF') 
      ),
	  cms.PSet(
         record = cms.string('AK1PFchs'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK1PFchs'), 
         label  = cms.string('AK1PFchs') 
      ),
	  cms.PSet(
         record = cms.string('AK2PFchs'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK2PFchs'), 
         label  = cms.string('AK2PFchs') 
      ),
	  cms.PSet(
         record = cms.string('AK3PFchs'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK3PFchs'), 
         label  = cms.string('AK3PFchs') 
      ),
	  cms.PSet(
         record = cms.string('AK4PFchs'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK4PFchs'), 
         label  = cms.string('AK4PFchs') 
      ),
	  cms.PSet(
         record = cms.string('AK6PFchs'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK6PFchs'), 
         label  = cms.string('AK6PFchs') 
      ),
	  cms.PSet(
         record = cms.string('AK8PFchs'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK8PFchs'), 
         label  = cms.string('AK8PFchs') 
      ),
	  cms.PSet(
         record = cms.string('AK9PFchs'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK9PFchs'), 
         label  = cms.string('AK9PFchs') 
      ),
	  cms.PSet(
         record = cms.string('AK10PFchs'), 
         tag    = cms.string('JetCorrectorParametersCollection_'+eraStr+'_AK10PFchs'), 
         label  = cms.string('AK10PFchs') 
      )
   ) 
) 

process.dbWriterAK5CaloHLT = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr), 
   algo   = cms.untracked.string('AK5CaloHLT') 
) 
process.dbWriterAK5PFHLT = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK5PFHLT') 
) 
process.dbWriterAK5PFchsHLT = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK5PFchsHLT') 
)
process.dbWriterAK5Calo = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr), 
   algo   = cms.untracked.string('AK5Calo') 
) 
process.dbWriterAK5PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK5PF') 
) 
process.dbWriterAK5PFchs = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK5PFchs') 
) 
process.dbWriterAK5JPT = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo  = cms.untracked.string('AK5JPT') 
)
process.dbWriterAK5TRK = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr), 
   algo   = cms.untracked.string('AK5TRK') 
)
process.dbWriterAK7Calo = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK7Calo') 
) 
process.dbWriterAK7PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK7PF') 
)
process.dbWriterAK7PFchs = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK7PFchs') 
) 
process.dbWriterAK7JPT = cms.EDAnalyzer('JetCorrectorDBWriter',
   era    = cms.untracked.string(eraStr),
   algo   = cms.untracked.string('AK7JPT')
)
process.dbWriterKT4Calo = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('KT4Calo') 
) 
process.dbWriterKT4PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('KT4PF') 
) 
process.dbWriterKT6Calo = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr), 
   algo   = cms.untracked.string('KT6Calo') 
) 
process.dbWriterKT6PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('KT6PF') 
)
process.dbWriterIC5Calo = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('IC5Calo') 
) 
process.dbWriterIC5PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('IC5PF') 
)
process.dbWriterAK1PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK1PF') 
)
process.dbWriterAK2PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK2PF') 
)
process.dbWriterAK3PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK3PF') 
)
process.dbWriterAK4PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK4PF') 
)
process.dbWriterAK6PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK6PF') 
)
process.dbWriterAK8PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK8PF') 
)
process.dbWriterAK9PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK9PF') 
)
process.dbWriterAK10PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK10PF') 
)
process.dbWriterAK1PFchs = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK1PFchs') 
)
process.dbWriterAK2PFchs = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK2PFchs') 
)
process.dbWriterAK3PFchs = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK3PFchs') 
)
process.dbWriterAK4PFchs = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK4PFchs') 
)
process.dbWriterAK6PFchs = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK6PFchs') 
)
process.dbWriterAK8PFchs = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK8PFchs') 
)
process.dbWriterAK9PFchs = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK9PFchs') 
)
process.dbWriterAK10PFchs = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string(eraStr),  
   algo   = cms.untracked.string('AK10PFchs') 
)


process.p = cms.Path(
#process.dbWriterAK5CaloHLT *  
#process.dbWriterAK5PFHLT *
#process.dbWriterAK5PFchsHLT *
process.dbWriterAK5Calo *
process.dbWriterAK5PF *
process.dbWriterAK5PFchs *
#process.dbWriterAK5JPT *
#process.dbWriterAK5TRK *
process.dbWriterAK7Calo *
process.dbWriterAK7PF *
process.dbWriterAK7PFchs
#process.dbWriterAK7JPT *
#process.dbWriterKT4Calo *
#process.dbWriterKT4PF *
#process.dbWriterKT6Calo *
#process.dbWriterKT6PF *
#process.dbWriterIC5Calo *
#process.dbWriterIC5PF
#process.dbWriterAK1PF *
#process.dbWriterAK2PF *
#process.dbWriterAK3PF *
#process.dbWriterAK4PF *
#process.dbWriterAK6PF *
#process.dbWriterAK8PF *
#process.dbWriterAK9PF *
#process.dbWriterAK10PF *
#process.dbWriterAK1PFchs *
#process.dbWriterAK2PFchs *
#process.dbWriterAK3PFchs *
#process.dbWriterAK4PFchs *
#process.dbWriterAK6PFchs *
#process.dbWriterAK8PFchs *
#process.dbWriterAK9PFchs *
#process.dbWriterAK10PFchs
) 
