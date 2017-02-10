ALL_COMMONRULES += src_JetMETCorrections_Modules_test
src_JetMETCorrections_Modules_test_parent := JetMETCorrections/Modules
src_JetMETCorrections_Modules_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETCorrections_Modules_test,src/JetMETCorrections/Modules/test,TEST))
