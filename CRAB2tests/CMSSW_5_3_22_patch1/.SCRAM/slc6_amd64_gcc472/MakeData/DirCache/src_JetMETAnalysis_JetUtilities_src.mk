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
