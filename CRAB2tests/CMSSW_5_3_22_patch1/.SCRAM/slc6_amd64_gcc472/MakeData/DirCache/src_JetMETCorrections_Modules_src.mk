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
