ifeq ($(strip $(JetMETCorrections/Algorithms)),)
ALL_COMMONRULES += src_JetMETCorrections_Algorithms_src
src_JetMETCorrections_Algorithms_src_parent := JetMETCorrections/Algorithms
src_JetMETCorrections_Algorithms_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_JetMETCorrections_Algorithms_src,src/JetMETCorrections/Algorithms/src,LIBRARY))
JetMETCorrectionsAlgorithms := self/JetMETCorrections/Algorithms
JetMETCorrections/Algorithms := JetMETCorrectionsAlgorithms
JetMETCorrectionsAlgorithms_files := $(patsubst src/JetMETCorrections/Algorithms/src/%,%,$(wildcard $(foreach dir,src/JetMETCorrections/Algorithms/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JetMETCorrectionsAlgorithms_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/Algorithms/BuildFile
JetMETCorrectionsAlgorithms_LOC_USE := self cmssw CondFormats/JetMETObjects DataFormats/Common DataFormats/EgammaCandidates DataFormats/JetReco DataFormats/Math DataFormats/MuonReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet JetMETCorrections/Objects boost
JetMETCorrectionsAlgorithms_EX_LIB   := JetMETCorrectionsAlgorithms
JetMETCorrectionsAlgorithms_EX_USE   := $(foreach d,$(JetMETCorrectionsAlgorithms_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsAlgorithms_PACKAGE := self/src/JetMETCorrections/Algorithms/src
ALL_PRODS += JetMETCorrectionsAlgorithms
JetMETCorrectionsAlgorithms_CLASS := LIBRARY
JetMETCorrections/Algorithms_forbigobj+=JetMETCorrectionsAlgorithms
JetMETCorrectionsAlgorithms_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsAlgorithms,src/JetMETCorrections/Algorithms/src,src_JetMETCorrections_Algorithms_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
