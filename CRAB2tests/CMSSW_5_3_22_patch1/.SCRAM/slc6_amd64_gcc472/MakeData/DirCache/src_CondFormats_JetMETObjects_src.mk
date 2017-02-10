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
