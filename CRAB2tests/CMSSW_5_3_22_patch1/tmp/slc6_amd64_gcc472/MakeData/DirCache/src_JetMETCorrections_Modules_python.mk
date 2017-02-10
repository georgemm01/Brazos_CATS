ifeq ($(strip $(PyJetMETCorrectionsModules)),)
PyJetMETCorrectionsModules := self/src/JetMETCorrections/Modules/python
src_JetMETCorrections_Modules_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/JetMETCorrections/Modules/python)
PyJetMETCorrectionsModules_files := $(patsubst src/JetMETCorrections/Modules/python/%,%,$(wildcard $(foreach dir,src/JetMETCorrections/Modules/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyJetMETCorrectionsModules_LOC_USE := self cmssw 
PyJetMETCorrectionsModules_PACKAGE := self/src/JetMETCorrections/Modules/python
ALL_PRODS += PyJetMETCorrectionsModules
PyJetMETCorrectionsModules_CLASS := PYTHON
PyJetMETCorrectionsModules_INIT_FUNC        += $$(eval $$(call PythonProduct,PyJetMETCorrectionsModules,src/JetMETCorrections/Modules/python,src_JetMETCorrections_Modules_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyJetMETCorrectionsModules,src/JetMETCorrections/Modules/python))
endif
ALL_COMMONRULES += src_JetMETCorrections_Modules_python
src_JetMETCorrections_Modules_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETCorrections_Modules_python,src/JetMETCorrections/Modules/python,PYTHON))
