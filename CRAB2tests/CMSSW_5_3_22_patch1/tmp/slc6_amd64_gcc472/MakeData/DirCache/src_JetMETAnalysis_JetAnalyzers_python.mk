ifeq ($(strip $(PyJetMETAnalysisJetAnalyzers)),)
PyJetMETAnalysisJetAnalyzers := self/src/JetMETAnalysis/JetAnalyzers/python
src_JetMETAnalysis_JetAnalyzers_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/JetMETAnalysis/JetAnalyzers/python)
PyJetMETAnalysisJetAnalyzers_files := $(patsubst src/JetMETAnalysis/JetAnalyzers/python/%,%,$(wildcard $(foreach dir,src/JetMETAnalysis/JetAnalyzers/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyJetMETAnalysisJetAnalyzers_LOC_USE := self cmssw 
PyJetMETAnalysisJetAnalyzers_PACKAGE := self/src/JetMETAnalysis/JetAnalyzers/python
ALL_PRODS += PyJetMETAnalysisJetAnalyzers
PyJetMETAnalysisJetAnalyzers_CLASS := PYTHON
PyJetMETAnalysisJetAnalyzers_INIT_FUNC        += $$(eval $$(call PythonProduct,PyJetMETAnalysisJetAnalyzers,src/JetMETAnalysis/JetAnalyzers/python,src_JetMETAnalysis_JetAnalyzers_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyJetMETAnalysisJetAnalyzers,src/JetMETAnalysis/JetAnalyzers/python))
endif
ALL_COMMONRULES += src_JetMETAnalysis_JetAnalyzers_python
src_JetMETAnalysis_JetAnalyzers_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETAnalysis_JetAnalyzers_python,src/JetMETAnalysis/JetAnalyzers/python,PYTHON))
