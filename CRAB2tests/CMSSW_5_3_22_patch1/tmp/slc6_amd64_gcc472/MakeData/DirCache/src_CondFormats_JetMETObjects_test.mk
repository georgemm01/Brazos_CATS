ALL_COMMONRULES += src_CondFormats_JetMETObjects_test
src_CondFormats_JetMETObjects_test_parent := CondFormats/JetMETObjects
src_CondFormats_JetMETObjects_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CondFormats_JetMETObjects_test,src/CondFormats/JetMETObjects/test,TEST))
