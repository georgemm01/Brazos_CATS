ifeq ($(strip $(jet_inspect_histos_x)),)
jet_inspect_histos_x_files := $(patsubst src/JetMETAnalysis/JetUtilities/bin/%,%,$(foreach file,jet_inspect_histos_x.cc,$(eval xfile:=$(wildcard src/JetMETAnalysis/JetUtilities/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/JetMETAnalysis/JetUtilities/bin/$(file). Please fix src/JetMETAnalysis/JetUtilities/bin/BuildFile.))))
jet_inspect_histos_x := self/src/JetMETAnalysis/JetUtilities/bin
jet_inspect_histos_x_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETAnalysis/JetUtilities/bin/BuildFile
jet_inspect_histos_x_LOC_USE := self cmssw JetMETAnalysis/JetUtilities rootphysics rootgraphics root
jet_inspect_histos_x_PACKAGE := self/src/JetMETAnalysis/JetUtilities/bin
ALL_PRODS += jet_inspect_histos_x
jet_inspect_histos_x_CLASS := BINARY
jet_inspect_histos_x_INIT_FUNC        += $$(eval $$(call Binary,jet_inspect_histos_x,src/JetMETAnalysis/JetUtilities/bin,src_JetMETAnalysis_JetUtilities_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,jet_inspect_histos_x,src/JetMETAnalysis/JetUtilities/bin))
endif
ifeq ($(strip $(jet_inspect_graphs_x)),)
jet_inspect_graphs_x_files := $(patsubst src/JetMETAnalysis/JetUtilities/bin/%,%,$(foreach file,jet_inspect_graphs_x.cc,$(eval xfile:=$(wildcard src/JetMETAnalysis/JetUtilities/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/JetMETAnalysis/JetUtilities/bin/$(file). Please fix src/JetMETAnalysis/JetUtilities/bin/BuildFile.))))
jet_inspect_graphs_x := self/src/JetMETAnalysis/JetUtilities/bin
jet_inspect_graphs_x_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETAnalysis/JetUtilities/bin/BuildFile
jet_inspect_graphs_x_LOC_USE := self cmssw JetMETAnalysis/JetUtilities rootphysics rootgraphics root
jet_inspect_graphs_x_PACKAGE := self/src/JetMETAnalysis/JetUtilities/bin
ALL_PRODS += jet_inspect_graphs_x
jet_inspect_graphs_x_CLASS := BINARY
jet_inspect_graphs_x_INIT_FUNC        += $$(eval $$(call Binary,jet_inspect_graphs_x,src/JetMETAnalysis/JetUtilities/bin,src_JetMETAnalysis_JetUtilities_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,jet_inspect_graphs_x,src/JetMETAnalysis/JetUtilities/bin))
endif
ifeq ($(strip $(jet_inspect_profiles_x)),)
jet_inspect_profiles_x_files := $(patsubst src/JetMETAnalysis/JetUtilities/bin/%,%,$(foreach file,jet_inspect_profiles_x.cc,$(eval xfile:=$(wildcard src/JetMETAnalysis/JetUtilities/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/JetMETAnalysis/JetUtilities/bin/$(file). Please fix src/JetMETAnalysis/JetUtilities/bin/BuildFile.))))
jet_inspect_profiles_x := self/src/JetMETAnalysis/JetUtilities/bin
jet_inspect_profiles_x_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETAnalysis/JetUtilities/bin/BuildFile
jet_inspect_profiles_x_LOC_USE := self cmssw JetMETAnalysis/JetUtilities rootphysics rootgraphics root
jet_inspect_profiles_x_PACKAGE := self/src/JetMETAnalysis/JetUtilities/bin
ALL_PRODS += jet_inspect_profiles_x
jet_inspect_profiles_x_CLASS := BINARY
jet_inspect_profiles_x_INIT_FUNC        += $$(eval $$(call Binary,jet_inspect_profiles_x,src/JetMETAnalysis/JetUtilities/bin,src_JetMETAnalysis_JetUtilities_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,jet_inspect_profiles_x,src/JetMETAnalysis/JetUtilities/bin))
endif
ALL_COMMONRULES += src_JetMETAnalysis_JetUtilities_bin
src_JetMETAnalysis_JetUtilities_bin_parent := JetMETAnalysis/JetUtilities
src_JetMETAnalysis_JetUtilities_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETAnalysis_JetUtilities_bin,src/JetMETAnalysis/JetUtilities/bin,BINARY))
