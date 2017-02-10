from CRABClient.UserUtilities import config, getUsernameFromSiteDB
config = config()

config.General.requestName = 'tutorial_May2015_MC_xroot'
config.General.workArea = '../crab_jobs'
config.General.transferOutputs = True
config.General.transferLogs = True
config.General.instance = 'preprod'   #particular TAMU glideIns

config.JobType.pluginName = 'Analysis'
config.JobType.psetName = '../analysiscode/pset_tutorial_analysis.py'

config.Data.inputDataset = '/GenericTTbar/HC-CMSSW_5_3_1_START53_V5-v1/GEN-SIM-RECO'
config.Data.inputDBS = 'global'
config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 10
config.Data.outLFNDirBase = '/store/user/%s/' % (getUsernameFromSiteDB())
config.Data.publication = True
config.Data.publishDataName = 'CRAB3_tutorial_May2015_MC_xroot'
config.Data.ignoreLocality = True

config.Site.storageSite = 'T3_US_TAMU'
config.Site.whitelist = ['T3_US_TAMU']

# special TAMU GlideIn config 
config.section_("Debug")
config.Debug.collector = 'vocms0115.cern.ch'
config.Debug.scheddName = 'crab3-itb02@vocms068.cern.ch'
