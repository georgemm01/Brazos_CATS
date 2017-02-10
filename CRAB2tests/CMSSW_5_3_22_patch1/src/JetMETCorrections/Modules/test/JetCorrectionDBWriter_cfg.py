import FWCore.ParameterSet.Config as cms 
process = cms.Process('jecdb') 
process.load('CondCore.DBCommon.CondDBCommon_cfi') 
process.CondDBCommon.connect = 'sqlite_file:Fall12_V4_MC.db' 
process.maxEvents = cms.untracked.PSet(input = cms.untracked.int32(1)) 
process.source = cms.Source('EmptySource') 
process.PoolDBOutputService = cms.Service('PoolDBOutputService', 
   process.CondDBCommon, 
   toPut = cms.VPSet( 
#     cms.PSet(
#        record = cms.string('AK5CaloHLT'), 
#        tag    = cms.string('JetCorrectorParametersCollection_Jec12_V8_HLT_AK5CaloHLT'), 
#        label  = cms.string('AK5CaloHLT') 
#     ),
#     cms.PSet(
#        record = cms.string('AK5PFHLT'), 
#        tag    = cms.string('JetCorrectorParametersCollection_Jec12_V8_HLT_AK5PFHLT'), 
#        label  = cms.string('AK5PFHLT') 
#     ),
#     cms.PSet(
#        record = cms.string('AK5PFchsHLT'), 
#        tag    = cms.string('JetCorrectorParametersCollection_Jec12_V8_HLT_AK5PFchsHLT'), 
#        label  = cms.string('AK5PFchsHLT') 
#     ),
      cms.PSet(
         record = cms.string('AK5Calo'), 
         tag    = cms.string('JetCorrectorParametersCollection_Fall12_V4_MC_AK5Calo'), 
         label  = cms.string('AK5Calo') 
      ),
      cms.PSet(
         record = cms.string('AK5PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_Fall12_V4_MC_AK5PF'), 
         label  = cms.string('AK5PF') 
      ),
      cms.PSet(
         record = cms.string('AK5PFchs'), 
         tag    = cms.string('JetCorrectorParametersCollection_Fall12_V4_MC_AK5PFchs'), 
         label  = cms.string('AK5PFchs') 
      ),
      cms.PSet(
         record = cms.string('AK5JPT'), 
         tag    = cms.string('JetCorrectorParametersCollection_Fall12_V4_MC_AK5JPT'), 
         label  = cms.string('AK5JPT')
      ),
      cms.PSet(
         record = cms.string('AK7Calo'),
         tag    = cms.string('JetCorrectorParametersCollection_Fall12_V4_MC_AK7Calo'), 
         label  = cms.string('AK7Calo') 
      ),
      cms.PSet(
         record = cms.string('AK7PF'), 
         tag    = cms.string('JetCorrectorParametersCollection_Fall12_V4_MC_AK7PF'), 
         label  = cms.string('AK7PF') 
      ),
      cms.PSet(
         record = cms.string('AK7PFchs'), 
         tag    = cms.string('JetCorrectorParametersCollection_Fall12_V4_MC_AK7PFchs'), 
         label  = cms.string('AK7PFchs') 
      ),
      cms.PSet(
         record = cms.string('AK7JPT'),                           
         tag    = cms.string('JetCorrectorParametersCollection_Fall12_V4_MC_AK7JPT'),
         label  = cms.string('AK7JPT')                                          
      ),
#     cms.PSet(
#        record = cms.string('AK5Calo'), 
#        tag    = cms.string('JetCorrectorParametersCollection_Fall12_V1_DATA_AK5Calo'), 
#        label  = cms.string('AK5Calo') 
#     ),
#     cms.PSet(
#        record = cms.string('AK5PF'), 
#        tag    = cms.string('JetCorrectorParametersCollection_Fall12_V1_DATA_AK5PF'), 
#        label  = cms.string('AK5PF') 
#     ),
#     cms.PSet(
#        record = cms.string('AK5PFchs'), 
#        tag    = cms.string('JetCorrectorParametersCollection_Fall12_V1_DATA_AK5PFchs'), 
#        label  = cms.string('AK5PFchs') 
#     ),
#     cms.PSet(
#        record = cms.string('AK5JPT'), 
#        tag    = cms.string('JetCorrectorParametersCollection_Fall12_V1_DATA_AK5JPT'), 
#        label  = cms.string('AK5JPT')
#     ),
#     cms.PSet(
#        record = cms.string('AK7Calo'),
#        tag    = cms.string('JetCorrectorParametersCollection_Summer12_V1_DATA_AK7Calo'), 
#        label  = cms.string('AK7Calo') 
#     ),
#     cms.PSet(
#        record = cms.string('AK7PF'), 
#        tag    = cms.string('JetCorrectorParametersCollection_Summer12_V1_DATA_AK7PF'), 
#        label  = cms.string('AK7PF') 
#     ),
#     cms.PSet(
#        record = cms.string('AK7PFchs'), 
#        tag    = cms.string('JetCorrectorParametersCollection_Summer12_V1_DATA_AK7PFchs'), 
#        label  = cms.string('AK7PFchs') 
#     ),
#     cms.PSet(
#        record = cms.string('AK7JPT'),                           
#        tag    = cms.string('JetCorrectorParametersCollection_Summer12_V1_DATA_AK7JPT'),
#        label  = cms.string('AK7JPT')                                          
#     ),
#      cms.PSet(
#         record = cms.string('AK5TRK'), 
#         tag    = cms.string('JetCorrectorParametersCollection_Jec11_V5_AK5TRK'), 
#         label  = cms.string('AK5TRK') 
#      ),
#      cms.PSet(
#         record = cms.string('IC5Calo'), 
#         tag    = cms.string('JetCorrectorParametersCollection_Jec11_V5_IC5Calo'), 
#         label  = cms.string('IC5Calo') 
#      ),
#     cms.PSet(
#         record = cms.string('IC5PF'), 
#         tag    = cms.string('JetCorrectorParametersCollection_Jec11_V5_IC5PF'), 
#         label  = cms.string('IC5PF') 
#      ),
#      cms.PSet(
#         record = cms.string('KT4Calo'), 
#         tag    = cms.string('JetCorrectorParametersCollection_Jec12_V7_KT4Calo'), 
#         label  = cms.string('KT4Calo') 
#      ),
#      cms.PSet(
#         record = cms.string('KT4PF'), 
#         tag    = cms.string('JetCorrectorParametersCollection_Jec12_V7_KT4PF'), 
#         label  = cms.string('KT4PF') 
#      ),
#      cms.PSet(
#         record = cms.string('KT6Calo'), 
#         tag    = cms.string('JetCorrectorParametersCollection_Jec11_V5_KT6Calo'), 
#         label  = cms.string('KT6Calo') 
#      ),
#      cms.PSet(
#         record = cms.string('KT6PF'), 
#         tag    = cms.string('JetCorrectorParametersCollection_Jec11_V5_KT6PF'), 
#         label  = cms.string('KT6PF') 
#      )
   ) 
) 

#process.dbWriterAK5CaloHLT = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Jec12_V8_HLT'), 
#   algo   = cms.untracked.string('AK5CaloHLT') 
#) 
#process.dbWriterAK5PFHLT = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Jec12_V8_HLT'),  
#   algo   = cms.untracked.string('AK5PFHLT') 
#) 
#process.dbWriterAK5PFchsHLT = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Jec12_V8_HLT'),  
#   algo   = cms.untracked.string('AK5PFchsHLT') 
#)
process.dbWriterAK5CaloMC = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string('Fall12_V4_MC'), 
   algo   = cms.untracked.string('AK5Calo') 
) 
process.dbWriterAK5PFMC = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string('Fall12_V4_MC'),  
   algo   = cms.untracked.string('AK5PF') 
) 
process.dbWriterAK5PFchsMC = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string('Fall12_V4_MC'),  
   algo   = cms.untracked.string('AK5PFchs') 
) 
process.dbWriterAK5JPTMC = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string('Fall12_V4_MC'),  
   algo  = cms.untracked.string('AK5JPT') 
)
process.dbWriterAK7CaloMC = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string('Summer12_V4_MC'),  
   algo   = cms.untracked.string('AK7Calo') 
) 
process.dbWriterAK7PFMC = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string('Summer12_V4_MC'),  
   algo   = cms.untracked.string('AK7PF') 
) 
process.dbWriterAK7PFchsMC = cms.EDAnalyzer('JetCorrectorDBWriter', 
   era    = cms.untracked.string('Summer12_V4_MC'),  
   algo   = cms.untracked.string('AK7PFchs') 
) 
process.dbWriterAK7JPTMC = cms.EDAnalyzer('JetCorrectorDBWriter',
   era    = cms.untracked.string('Summer12_V4_MC'),
   algo   = cms.untracked.string('AK7JPT')
)
#process.dbWriterAK5CaloDATA = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Fall12_V1_DATA'), 
#   algo   = cms.untracked.string('AK5Calo') 
#) 
#process.dbWriterAK5PFDATA = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Fall12_V1_DATA'),  
#   algo   = cms.untracked.string('AK5PF') 
#) 
#process.dbWriterAK5PFchsDATA = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Fall12_V1_DATA'),  
#   algo   = cms.untracked.string('AK5PFchs') 
#) 
#process.dbWriterAK5JPTDATA = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Fall12_V1_DATA'),  
#   algo  = cms.untracked.string('AK5JPT') 
#)
#process.dbWriterAK7CaloDATA = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Summer12_V1_DATA'),  
#   algo   = cms.untracked.string('AK7Calo') 
#) 
#process.dbWriterAK7PFDATA = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Summer12_V1_DATA'),  
#   algo   = cms.untracked.string('AK7PF') 
#) 
#process.dbWriterAK7PFchsDATA = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Summer12_V1_DATA'),  
#   algo   = cms.untracked.string('AK7PFchs') 
#) 
#process.dbWriterAK7JPTDATA = cms.EDAnalyzer('JetCorrectorDBWriter',
#   era    = cms.untracked.string('Summer12_V1_DATA'),
#   algo   = cms.untracked.string('AK7JPT')
#)
#process.dbWriterAK5TRK = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Jec11_V5'), 
#   algo   = cms.untracked.string('AK5TRK') 
#)
#process.dbWriterKT4Calo = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Jec12_V7'),  
#   algo   = cms.untracked.string('KT4Calo') 
#) 
#process.dbWriterKT4PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Jec12_V7'),  
#   algo   = cms.untracked.string('KT4PF') 
#) 
#process.dbWriterKT6Calo = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Jec11_V5'), 
#   algo   = cms.untracked.string('KT6Calo') 
#) 
#process.dbWriterKT6PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Jec11_V5'),  
#   algo   = cms.untracked.string('KT6PF') 
#)
#process.dbWriterIC5Calo = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Jec11_V5'),  
#   algo   = cms.untracked.string('IC5Calo') 
#) 
#process.dbWriterIC5PF = cms.EDAnalyzer('JetCorrectorDBWriter', 
#   era    = cms.untracked.string('Jec11_V5'),  
#   algo   = cms.untracked.string('IC5PF') 
#) 



process.p = cms.Path(
#process.dbWriterAK5CaloHLT *
#process.dbWriterAK5PFHLT *
#process.dbWriterAK5PFchsHLT *
process.dbWriterAK5CaloMC *
process.dbWriterAK5PFMC *
process.dbWriterAK5PFchsMC *
process.dbWriterAK5JPTMC *
process.dbWriterAK7CaloMC *
process.dbWriterAK7PFMC *
process.dbWriterAK7PFchsMC *
process.dbWriterAK7JPTMC
#process.dbWriterAK5CaloDATA *
#process.dbWriterAK5PFDATA *
#process.dbWriterAK5PFchsDATA *
#process.dbWriterAK5JPTDATA *
#process.dbWriterAK7CaloDATA *
#process.dbWriterAK7PFDATA *
#process.dbWriterAK7PFchsDATA *
#process.dbWriterAK7JPTDATA *
#process.dbWriterAK5TRK *
#process.dbWriterKT4Calo *
#process.dbWriterKT4PF *
#process.dbWriterKT6Calo *
#process.dbWriterKT6PF *
#process.dbWriterIC5Calo *
#process.dbWriterIC5PF
) 
