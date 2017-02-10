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
