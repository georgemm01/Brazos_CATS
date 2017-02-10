ifeq ($(strip $(JetMETAnalysisJetUtilitiesPlugins)),)
JetMETAnalysisJetUtilitiesPlugins := self/src/JetMETAnalysis/JetUtilities/plugins
PLUGINS:=yes
JetMETAnalysisJetUtilitiesPlugins_files := $(patsubst src/JetMETAnalysis/JetUtilities/plugins/%,%,$(foreach file,MatchRecToGen.cc MatchRecToGenByCandidate.cc MatchBackToBack.cc JetViewCleaner.cc EtaPtMinCandViewRefSelector.cc,$(eval xfile:=$(wildcard src/JetMETAnalysis/JetUtilities/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/JetMETAnalysis/JetUtilities/plugins/$(file). Please fix src/JetMETAnalysis/JetUtilities/plugins/BuildFile.))))
JetMETAnalysisJetUtilitiesPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETAnalysis/JetUtilities/plugins/BuildFile
JetMETAnalysisJetUtilitiesPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet PhysicsTools/UtilAlgos CommonTools/UtilAlgos DataFormats/HepMCCandidate DataFormats/JetReco DataFormats/Math root
JetMETAnalysisJetUtilitiesPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,JetMETAnalysisJetUtilitiesPlugins,JetMETAnalysisJetUtilitiesPlugins,$(SCRAMSTORENAME_LIB),src/JetMETAnalysis/JetUtilities/plugins))
JetMETAnalysisJetUtilitiesPlugins_PACKAGE := self/src/JetMETAnalysis/JetUtilities/plugins
ALL_PRODS += JetMETAnalysisJetUtilitiesPlugins
JetMETAnalysisJetUtilitiesPlugins_CLASS := PLUGINS
JetMETAnalysis/JetUtilities_forbigobj+=JetMETAnalysisJetUtilitiesPlugins
JetMETAnalysisJetUtilitiesPlugins_INIT_FUNC        += $$(eval $$(call Library,JetMETAnalysisJetUtilitiesPlugins,src/JetMETAnalysis/JetUtilities/plugins,src_JetMETAnalysis_JetUtilities_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,JetMETAnalysisJetUtilitiesPlugins,src/JetMETAnalysis/JetUtilities/plugins))
endif
ALL_COMMONRULES += src_JetMETAnalysis_JetUtilities_plugins
src_JetMETAnalysis_JetUtilities_plugins_parent := JetMETAnalysis/JetUtilities
src_JetMETAnalysis_JetUtilities_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETAnalysis_JetUtilities_plugins,src/JetMETAnalysis/JetUtilities/plugins,PLUGINS))
