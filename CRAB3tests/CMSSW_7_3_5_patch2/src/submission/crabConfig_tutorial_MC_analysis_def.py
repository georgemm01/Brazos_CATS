from CRABClient.UserUtilities import config, getUsernameFromSiteDB
import datetime

config = config()

today=datetime.datetime.today()
tt=today.strftime("_%y%m%d%H%M%S")

config.General.requestName = 'CRAB3_Small_Output_Brazos'+tt
config.General.workArea = '../crab_jobs'
config.General.transferOutputs = True
config.General.transferLogs = True

config.JobType.pluginName = 'Analysis'
config.JobType.psetName = '../analysiscode/pset_tutorial_analysis.py'

config.Data.inputDataset = '/GenericTTbar/HC-CMSSW_5_3_1_START53_V5-v1/GEN-SIM-RECO'
config.Data.inputDBS = 'global'
config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 10
config.Data.outLFNDirBase = '/store/user/%s/' % (getUsernameFromSiteDB())
config.Data.publication = True
config.Data.outputDatasetTag = 'CRAB3_monitor_test'

config.Site.storageSite = 'T3_US_TAMU'
config.Site.whitelist = ['T3_US_TAMU']

