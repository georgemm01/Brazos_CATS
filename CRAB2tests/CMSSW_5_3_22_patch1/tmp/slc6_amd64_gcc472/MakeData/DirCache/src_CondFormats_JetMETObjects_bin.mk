ifeq ($(strip $(JetResolution_t)),)
JetResolution_t_files := $(patsubst src/CondFormats/JetMETObjects/bin/%,%,$(foreach file,JetResolution_t.cc,$(eval xfile:=$(wildcard src/CondFormats/JetMETObjects/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CondFormats/JetMETObjects/bin/$(file). Please fix src/CondFormats/JetMETObjects/bin/BuildFile.))))
JetResolution_t := self/src/CondFormats/JetMETObjects/bin
JetResolution_t_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondFormats/JetMETObjects/bin/BuildFile
JetResolution_t_LOC_USE := self cmssw CondFormats/JetMETObjects rootgraphics root
JetResolution_t_PACKAGE := self/src/CondFormats/JetMETObjects/bin
ALL_PRODS += JetResolution_t
JetResolution_t_CLASS := BINARY
JetResolution_t_INIT_FUNC        += $$(eval $$(call Binary,JetResolution_t,src/CondFormats/JetMETObjects/bin,src_CondFormats_JetMETObjects_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,JetResolution_t,src/CondFormats/JetMETObjects/bin))
endif
ALL_COMMONRULES += src_CondFormats_JetMETObjects_bin
src_CondFormats_JetMETObjects_bin_parent := CondFormats/JetMETObjects
src_CondFormats_JetMETObjects_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CondFormats_JetMETObjects_bin,src/CondFormats/JetMETObjects/bin,BINARY))
