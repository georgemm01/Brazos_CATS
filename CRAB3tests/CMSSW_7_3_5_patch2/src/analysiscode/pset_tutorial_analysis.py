import FWCore.ParameterSet.Config as cms

process = cms.Process('NoSplit')

process.source = cms.Source("PoolSource", fileNames = cms.untracked.vstring('root://cmsxrootd.fnal.gov///store/mc/HC/GenericTTbar/GEN-SIM-RECO/CMSSW_5_3_1_START53_V5-v1/0010/00CE4E7C-DAAD-E111-BA36-0025B32034EA.root'))
process.maxEvents = cms.untracked.PSet(input = cms.untracked.int32(10))
process.options = cms.untracked.PSet(wantSummary = cms.untracked.bool(True))
process.output = cms.OutputModule("PoolOutputModule",
    outputCommands = cms.untracked.vstring("drop *", "keep recoTracks_*_*_*"),
    fileName = cms.untracked.string('output.root'),
)
process.out = cms.EndPath(process.output)
