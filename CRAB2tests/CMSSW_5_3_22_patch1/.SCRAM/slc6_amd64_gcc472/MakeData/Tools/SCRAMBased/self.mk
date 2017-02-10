ifeq ($(strip $(AlignmentOfflinevalidationPlugins)),)
AlignmentOfflinevalidationPlugins := self/src/Alignment/OfflineValidation/plugins
AlignmentOfflinevalidationPlugins_LOC_USE := self cmssw FWCore/MessageLogger TrackPropagation/SteppingHelixPropagator Alignment/CommonAlignment Alignment/TrackerAlignment CondCore/DBOutputService CondFormats/Alignment DataFormats/TrackReco DataFormats/MuonReco FWCore/PluginManager FWCore/Framework FWCore/Utilities FWCore/ParameterSet FWCore/ServiceRegistry Geometry/TrackerGeometryBuilder CommonTools/TrackerMap CommonTools/UtilAlgos CommonTools/Utils RecoMuon/TrackingTools TrackingTools/TransientTrack SimDataFormats/Track SimDataFormats/GeneratorProducts SimTracker/Records SimTracker/TrackAssociation DataFormats/DetId DataFormats/MuonDetId Geometry/CommonDetUnit Geometry/CommonTopologies Geometry/Records Geometry/TrackerNumberingBuilder DataFormats/SiStripDetId DataFormats/SiPixelDetId DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit TrackingTools/TrackFitters TrackingTools/TrajectoryState TrackingTools/IPTools DataFormats/TrajectorySeed DataFormats/VertexReco SimDataFormats/Vertex DataFormats/BeamSpot RecoVertex/PrimaryVertexProducer MagneticField/Records DQM/SiStripCommon DQMServices/Core clhep root TrackingTools/TrackAssociator Geometry/CaloGeometry Alignment/OfflineValidation
Alignment/OfflineValidation_relbigobj+=AlignmentOfflinevalidationPlugins
endif
ifeq ($(strip $(GeneratorInterfaceLHEIO)),)
GeneratorInterfaceLHEIO := self/src/GeneratorInterface/LHEInterface/plugins
GeneratorInterfaceLHEIO_LOC_USE := self cmssw FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities GeneratorInterface/LHEInterface GeneratorInterface/Core boost FWCore/Framework FWCore/Sources SimDataFormats/GeneratorProducts mcdb
GeneratorInterface/LHEInterface_relbigobj+=GeneratorInterfaceLHEIO
endif
ifeq ($(strip $(GeneratorInterfaceLHEProducer)),)
GeneratorInterfaceLHEProducer := self/src/GeneratorInterface/LHEInterface/plugins
GeneratorInterfaceLHEProducer_LOC_USE := self cmssw FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities GeneratorInterface/LHEInterface GeneratorInterface/Core boost FWCore/Framework SimDataFormats/GeneratorProducts
GeneratorInterface/LHEInterface_relbigobj+=GeneratorInterfaceLHEProducer
endif
ifeq ($(strip $(GeneratorInterfaceLHECOMWeightProducer)),)
GeneratorInterfaceLHECOMWeightProducer := self/src/GeneratorInterface/LHEInterface/plugins
GeneratorInterfaceLHECOMWeightProducer_LOC_USE := self cmssw FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities GeneratorInterface/LHEInterface GeneratorInterface/Core boost FWCore/Framework SimDataFormats/GeneratorProducts lhapdf
GeneratorInterface/LHEInterface_relbigobj+=GeneratorInterfaceLHECOMWeightProducer
endif
ifeq ($(strip $(GeneratorInterfaceLHEAnalyzer)),)
GeneratorInterfaceLHEAnalyzer := self/src/GeneratorInterface/LHEInterface/plugins
GeneratorInterfaceLHEAnalyzer_LOC_USE := self cmssw FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities GeneratorInterface/LHEInterface GeneratorInterface/Core boost FWCore/Framework DataFormats/StdDictionaries SimDataFormats/GeneratorProducts CommonTools/UtilAlgos
GeneratorInterface/LHEInterface_relbigobj+=GeneratorInterfaceLHEAnalyzer
endif
ifeq ($(strip $(FWCore/Version)),)
FWCoreVersion := self/FWCore/Version
FWCore/Version := FWCoreVersion
FWCoreVersion_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreVersion_EX_USE := $(foreach d, self cmssw ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreVersion_EX_LIB   := FWCoreVersion
ALL_EXTERNAL_PRODS += FWCoreVersion
FWCoreVersion_CLASS := LIBRARY
FWCore/Version_relbigobj+=FWCoreVersion
endif
ifeq ($(strip $(GeneratorInterface/LHEInterface)),)
GeneratorInterfaceLHEInterface := self/GeneratorInterface/LHEInterface
GeneratorInterface/LHEInterface := GeneratorInterfaceLHEInterface
GeneratorInterfaceLHEInterface_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceLHEInterface_EX_USE := $(foreach d, self cmssw FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities SimDataFormats/GeneratorProducts Utilities/StorageFactory hepmc boost sigcpp xerces-c rootmath libhepml fastjet xz,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceLHEInterface_EX_LIB   := GeneratorInterfaceLHEInterface
ALL_EXTERNAL_PRODS += GeneratorInterfaceLHEInterface
GeneratorInterfaceLHEInterface_CLASS := LIBRARY
GeneratorInterface/LHEInterface_relbigobj+=GeneratorInterfaceLHEInterface
endif
ifeq ($(strip $(PhysicsToolsJetMCAlgosPlugins)),)
PhysicsToolsJetMCAlgosPlugins := self/src/PhysicsTools/JetMCAlgos/plugins
PhysicsToolsJetMCAlgosPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet CommonTools/Utils PhysicsTools/JetMCAlgos PhysicsTools/JetMCUtils PhysicsTools/HepMCCandAlgos SimDataFormats/JetMatching SimDataFormats/GeneratorProducts DataFormats/HepMCCandidate fastjet
PhysicsTools/JetMCAlgos_relbigobj+=PhysicsToolsJetMCAlgosPlugins
endif
ifeq ($(strip $(Alignment/OfflineValidation)),)
AlignmentOfflineValidation := self/Alignment/OfflineValidation
Alignment/OfflineValidation := AlignmentOfflineValidation
AlignmentOfflineValidation_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentOfflineValidation_EX_USE := $(foreach d, self cmssw DataFormats/TrackReco FWCore/PluginManager FWCore/Framework FWCore/Utilities FWCore/ParameterSet FWCore/ServiceRegistry Geometry/TrackerGeometryBuilder TrackingTools/TrackFitters MagneticField/Engine rootrflx clhep rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentOfflineValidation_LCGDICTS  := x 
AlignmentOfflineValidation_EX_LIB   := AlignmentOfflineValidation
ALL_EXTERNAL_PRODS += AlignmentOfflineValidation
AlignmentOfflineValidation_CLASS := LIBRARY
Alignment/OfflineValidation_relbigobj+=AlignmentOfflineValidation
endif
ifeq ($(strip $(PhysicsTools/JetMCAlgos)),)
PhysicsToolsJetMCAlgos := self/PhysicsTools/JetMCAlgos
PhysicsTools/JetMCAlgos := PhysicsToolsJetMCAlgos
PhysicsToolsJetMCAlgos_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsJetMCAlgos_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet PhysicsTools/JetMCUtils,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsJetMCAlgos_EX_LIB   := PhysicsToolsJetMCAlgos
ALL_EXTERNAL_PRODS += PhysicsToolsJetMCAlgos
PhysicsToolsJetMCAlgos_CLASS := LIBRARY
PhysicsTools/JetMCAlgos_relbigobj+=PhysicsToolsJetMCAlgos
endif
