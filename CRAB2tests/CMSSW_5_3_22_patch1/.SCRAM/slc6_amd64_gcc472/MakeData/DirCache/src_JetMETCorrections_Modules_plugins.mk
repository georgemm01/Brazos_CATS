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
