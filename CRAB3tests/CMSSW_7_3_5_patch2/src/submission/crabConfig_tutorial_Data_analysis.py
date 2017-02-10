from CRABClient.UserUtilities import config, getUsernameFromSiteDB
config = config()

config.General.requestName = 'tutorial_May2015_Data'
config.General.workArea = '../crab_jobs'
config.General.transferOutputs = True
config.General.transferLogs = False
config.General.instance = 'preprod'  # TAMU glideIn

config.JobType.pluginName = 'Analysis'
config.JobType.psetName = '../analysiscode/pset_tutorial_analysis.py'

config.Data.inputDataset = '/SingleMu/Run2012B-13Jul2012-v1/AOD'
config.Data.inputDBS = 'global'
config.Data.splitting = 'LumiBased'
config.Data.unitsPerJob = 20
config.Data.lumiMask = 'https://cms-service-dqm.web.cern.ch/cms-service-dqm/CAF/certification/Collisions12/8TeV/Prompt/Cert_190456-208686_8TeV_PromptReco_Collisions12_JSON.txt'
config.Data.runRange = '0-500' #'193093-193999' # '193093-194075'
config.Data.outLFNDirBase = '/store/user/%s/' % (getUsernameFromSiteDB())
config.Data.publication = True
config.Data.publishDataName = 'CRAB3_tutorial_May2015_data'

config.Site.storageSite = 'T3_US_TAMU'
config.Site.whitelist = ['T3_US_TAMU']

# TAMU GlideIn
config.section_("Debug")
config.Debug.collector = 'vocms0115.cern.ch'
config.Debug.scheddName = 'crab3-itb02@vocms068.cern.ch'
