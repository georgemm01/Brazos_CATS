ifeq ($(strip $(JetMETCorrections/Modules)),)
ALL_COMMONRULES += src_JetMETCorrections_Modules_src
src_JetMETCorrections_Modules_src_parent := JetMETCorrections/Modules
src_JetMETCorrections_Modules_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_JetMETCorrections_Modules_src,src/JetMETCorrections/Modules/src,LIBRARY))
JetMETCorrectionsModules := self/JetMETCorrections/Modules
JetMETCorrections/Modules := JetMETCorrectionsModules
JetMETCorrectionsModules_files := $(patsubst src/JetMETCorrections/Modules/src/%,%,$(wildcard $(foreach dir,src/JetMETCorrections/Modules/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JetMETCorrectionsModules_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/Modules/BuildFile
JetMETCorrectionsModules_LOC_USE := self cmssw CondCore/PluginSystem CondFormats/DataRecord CondCore/DBCommon CondCore/DBOutputService CommonTools/Utils DataFormats/Common DataFormats/JetReco FWCore/Framework FWCore/ParameterSet JetMETCorrections/Objects JetMETCorrections/Algorithms boost
JetMETCorrectionsModules_EX_LIB   := JetMETCorrectionsModules
JetMETCorrectionsModules_EX_USE   := $(foreach d,$(JetMETCorrectionsModules_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsModules_PACKAGE := self/src/JetMETCorrections/Modules/src
ALL_PRODS += JetMETCorrectionsModules
JetMETCorrectionsModules_CLASS := LIBRARY
JetMETCorrections/Modules_forbigobj+=JetMETCorrectionsModules
JetMETCorrectionsModules_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsModules,src/JetMETCorrections/Modules/src,src_JetMETCorrections_Modules_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(JetMETCorrectionsModulesPlugins)),)
JetMETCorrectionsModulesPlugins := self/src/JetMETCorrections/Modules/plugins
PLUGINS:=yes
JetMETCorrectionsModulesPlugins_files := $(patsubst src/JetMETCorrections/Modules/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/JetMETCorrections/Modules/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/JetMETCorrections/Modules/plugins/$(file). Please fix src/JetMETCorrections/Modules/plugins/BuildFile.))))
JetMETCorrectionsModulesPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/Modules/plugins/BuildFile
JetMETCorrectionsModulesPlugins_LOC_USE := self cmssw CondCore/PluginSystem CondFormats/DataRecord CondCore/DBCommon CondCore/DBOutputService DataFormats/JetReco FWCore/Framework FWCore/PluginManager JetMETCorrections/Algorithms JetMETCorrections/Objects JetMETCorrections/Modules PhysicsTools/UtilAlgos
JetMETCorrectionsModulesPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,JetMETCorrectionsModulesPlugins,JetMETCorrectionsModulesPlugins,$(SCRAMSTORENAME_LIB),src/JetMETCorrections/Modules/plugins))
JetMETCorrectionsModulesPlugins_PACKAGE := self/src/JetMETCorrections/Modules/plugins
ALL_PRODS += JetMETCorrectionsModulesPlugins
JetMETCorrectionsModulesPlugins_CLASS := PLUGINS
JetMETCorrections/Modules_forbigobj+=JetMETCorrectionsModulesPlugins
JetMETCorrectionsModulesPlugins_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsModulesPlugins,src/JetMETCorrections/Modules/plugins,src_JetMETCorrections_Modules_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,JetMETCorrectionsModulesPlugins,src/JetMETCorrections/Modules/plugins))
endif
ALL_COMMONRULES += src_JetMETCorrections_Modules_plugins
src_JetMETCorrections_Modules_plugins_parent := JetMETCorrections/Modules
src_JetMETCorrections_Modules_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETCorrections_Modules_plugins,src/JetMETCorrections/Modules/plugins,PLUGINS))
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
ifeq ($(strip $(JetMETAnalysis/JetUtilities)),)
ALL_COMMONRULES += src_JetMETAnalysis_JetUtilities_src
src_JetMETAnalysis_JetUtilities_src_parent := JetMETAnalysis/JetUtilities
src_JetMETAnalysis_JetUtilities_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_JetMETAnalysis_JetUtilities_src,src/JetMETAnalysis/JetUtilities/src,LIBRARY))
JetMETAnalysisJetUtilities := self/JetMETAnalysis/JetUtilities
JetMETAnalysis/JetUtilities := JetMETAnalysisJetUtilities
JetMETAnalysisJetUtilities_files := $(patsubst src/JetMETAnalysis/JetUtilities/src/%,%,$(wildcard $(foreach dir,src/JetMETAnalysis/JetUtilities/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JetMETAnalysisJetUtilities_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETAnalysis/JetUtilities/BuildFile
JetMETAnalysisJetUtilities_LOC_USE := self cmssw DataFormats/JetReco DataFormats/Math root rootmath rootcore rootminuit
JetMETAnalysisJetUtilities_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,JetMETAnalysisJetUtilitiesCapabilities,JetMETAnalysisJetUtilities,$(SCRAMSTORENAME_LIB),src/JetMETAnalysis/JetUtilities/src))
JetMETAnalysisJetUtilities_LCGDICTS  := x 
JetMETAnalysisJetUtilities_PRE_INIT_FUNC += $$(eval $$(call LCGDict,JetMETAnalysisJetUtilities,0,src/JetMETAnalysis/JetUtilities/src/classes.h,src/JetMETAnalysis/JetUtilities/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
JetMETAnalysisJetUtilities_ROOTDICTS  := y 
JetMETAnalysisJetUtilities_PRE_INIT_FUNC += $$(eval $$(call RootDict,JetMETAnalysisJetUtilities,src/JetMETAnalysis/JetUtilities/src,JetUtilitiesLinkDef.h,$(SCRAMSTORENAME_LIB)))
JetMETAnalysisJetUtilities_EX_LIB   := JetMETAnalysisJetUtilities
JetMETAnalysisJetUtilities_EX_USE   := $(foreach d,$(JetMETAnalysisJetUtilities_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETAnalysisJetUtilities_PACKAGE := self/src/JetMETAnalysis/JetUtilities/src
ALL_PRODS += JetMETAnalysisJetUtilities
JetMETAnalysisJetUtilities_CLASS := LIBRARY
JetMETAnalysis/JetUtilities_forbigobj+=JetMETAnalysisJetUtilities
JetMETAnalysisJetUtilities_INIT_FUNC        += $$(eval $$(call Library,JetMETAnalysisJetUtilities,src/JetMETAnalysis/JetUtilities/src,src_JetMETAnalysis_JetUtilities_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(JetMETAnalysis/JetAnalyzers)),)
ALL_COMMONRULES += src_JetMETAnalysis_JetAnalyzers_src
src_JetMETAnalysis_JetAnalyzers_src_parent := JetMETAnalysis/JetAnalyzers
src_JetMETAnalysis_JetAnalyzers_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_JetMETAnalysis_JetAnalyzers_src,src/JetMETAnalysis/JetAnalyzers/src,LIBRARY))
JetMETAnalysisJetAnalyzers := self/JetMETAnalysis/JetAnalyzers
JetMETAnalysis/JetAnalyzers := JetMETAnalysisJetAnalyzers
JetMETAnalysisJetAnalyzers_files := $(patsubst src/JetMETAnalysis/JetAnalyzers/src/%,%,$(wildcard $(foreach dir,src/JetMETAnalysis/JetAnalyzers/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JetMETAnalysisJetAnalyzers_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETAnalysis/JetAnalyzers/BuildFile
JetMETAnalysisJetAnalyzers_LOC_USE := self cmssw JetMETAnalysis/JetUtilities JetMETCorrections/Objects CondFormats/JetMETObjects FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService FWCore/ServiceRegistry FWCore/Utilities CommonTools/UtilAlgos DataFormats/JetReco DataFormats/TauReco DataFormats/Math DataFormats/HepMCCandidate DataFormats/Common SimDataFormats/GeneratorProducts SimDataFormats/JetMatching PhysicsTools/Utilities root rootmath rootcore rootminuit
JetMETAnalysisJetAnalyzers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,JetMETAnalysisJetAnalyzers,JetMETAnalysisJetAnalyzers,$(SCRAMSTORENAME_LIB),src/JetMETAnalysis/JetAnalyzers/src))
JetMETAnalysisJetAnalyzers_PACKAGE := self/src/JetMETAnalysis/JetAnalyzers/src
ALL_PRODS += JetMETAnalysisJetAnalyzers
JetMETAnalysisJetAnalyzers_CLASS := LIBRARY
JetMETAnalysis/JetAnalyzers_forbigobj+=JetMETAnalysisJetAnalyzers
JetMETAnalysisJetAnalyzers_INIT_FUNC        += $$(eval $$(call Library,JetMETAnalysisJetAnalyzers,src/JetMETAnalysis/JetAnalyzers/src,src_JetMETAnalysis_JetAnalyzers_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(CondFormats/JetMETObjects)),)
ALL_COMMONRULES += src_CondFormats_JetMETObjects_src
src_CondFormats_JetMETObjects_src_parent := CondFormats/JetMETObjects
src_CondFormats_JetMETObjects_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CondFormats_JetMETObjects_src,src/CondFormats/JetMETObjects/src,LIBRARY))
CondFormatsJetMETObjects := self/CondFormats/JetMETObjects
CondFormats/JetMETObjects := CondFormatsJetMETObjects
CondFormatsJetMETObjects_files := $(patsubst src/CondFormats/JetMETObjects/src/%,%,$(wildcard $(foreach dir,src/CondFormats/JetMETObjects/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CondFormatsJetMETObjects_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondFormats/JetMETObjects/BuildFile
CondFormatsJetMETObjects_LOC_USE := self cmssw DataFormats/CaloTowers FWCore/ParameterSet FWCore/Utilities root rootmath rootrflx clhep
CondFormatsJetMETObjects_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CondFormatsJetMETObjectsCapabilities,CondFormatsJetMETObjects,$(SCRAMSTORENAME_LIB),src/CondFormats/JetMETObjects/src))
CondFormatsJetMETObjects_LCGDICTS  := x 
CondFormatsJetMETObjects_PRE_INIT_FUNC += $$(eval $$(call LCGDict,CondFormatsJetMETObjects,0,src/CondFormats/JetMETObjects/src/classes.h,src/CondFormats/JetMETObjects/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
CondFormatsJetMETObjects_EX_LIB   := CondFormatsJetMETObjects
CondFormatsJetMETObjects_EX_USE   := $(foreach d,$(CondFormatsJetMETObjects_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsJetMETObjects_PACKAGE := self/src/CondFormats/JetMETObjects/src
ALL_PRODS += CondFormatsJetMETObjects
CondFormatsJetMETObjects_CLASS := LIBRARY
CondFormats/JetMETObjects_forbigobj+=CondFormatsJetMETObjects
CondFormatsJetMETObjects_INIT_FUNC        += $$(eval $$(call Library,CondFormatsJetMETObjects,src/CondFormats/JetMETObjects/src,src_CondFormats_JetMETObjects_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(JetMETCorrections/Algorithms)),)
ALL_COMMONRULES += src_JetMETCorrections_Algorithms_src
src_JetMETCorrections_Algorithms_src_parent := JetMETCorrections/Algorithms
src_JetMETCorrections_Algorithms_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_JetMETCorrections_Algorithms_src,src/JetMETCorrections/Algorithms/src,LIBRARY))
JetMETCorrectionsAlgorithms := self/JetMETCorrections/Algorithms
JetMETCorrections/Algorithms := JetMETCorrectionsAlgorithms
JetMETCorrectionsAlgorithms_files := $(patsubst src/JetMETCorrections/Algorithms/src/%,%,$(wildcard $(foreach dir,src/JetMETCorrections/Algorithms/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JetMETCorrectionsAlgorithms_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/Algorithms/BuildFile
JetMETCorrectionsAlgorithms_LOC_USE := self cmssw CondFormats/JetMETObjects DataFormats/Common DataFormats/EgammaCandidates DataFormats/JetReco DataFormats/Math DataFormats/MuonReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet JetMETCorrections/Objects boost
JetMETCorrectionsAlgorithms_EX_LIB   := JetMETCorrectionsAlgorithms
JetMETCorrectionsAlgorithms_EX_USE   := $(foreach d,$(JetMETCorrectionsAlgorithms_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsAlgorithms_PACKAGE := self/src/JetMETCorrections/Algorithms/src
ALL_PRODS += JetMETCorrectionsAlgorithms
JetMETCorrectionsAlgorithms_CLASS := LIBRARY
JetMETCorrections/Algorithms_forbigobj+=JetMETCorrectionsAlgorithms
JetMETCorrectionsAlgorithms_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsAlgorithms,src/JetMETCorrections/Algorithms/src,src_JetMETCorrections_Algorithms_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
