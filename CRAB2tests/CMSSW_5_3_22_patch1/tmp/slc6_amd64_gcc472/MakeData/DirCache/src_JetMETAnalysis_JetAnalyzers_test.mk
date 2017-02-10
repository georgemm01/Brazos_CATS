ALL_COMMONRULES += src_JetMETAnalysis_JetAnalyzers_test
src_JetMETAnalysis_JetAnalyzers_test_parent := JetMETAnalysis/JetAnalyzers
src_JetMETAnalysis_JetAnalyzers_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETAnalysis_JetAnalyzers_test,src/JetMETAnalysis/JetAnalyzers/test,TEST))
