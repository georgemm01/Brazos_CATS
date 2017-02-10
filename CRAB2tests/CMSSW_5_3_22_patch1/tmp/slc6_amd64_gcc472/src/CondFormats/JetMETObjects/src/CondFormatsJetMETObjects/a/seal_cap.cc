static  const char* clnames[] = {
  "LCGReflex/SimpleJetCorrector",
  "LCGReflex/FactorizedJetCorrector",
  "LCGReflex/SimpleJetCorrectionUncertainty",
  "LCGReflex/JetCorrectionUncertainty",
  "LCGReflex/JetCorrectorParameters",
  "LCGReflex/JetCorrectorParametersCollection",
  "LCGReflex/std::vector<JetCorrectorParametersCollection>",
  "LCGReflex/JetCorrectorParameters::Record",
  "LCGReflex/std::vector<JetCorrectorParameters::Record>",
  "LCGReflex/std::vector<JetCorrectorParameters>",
  "LCGReflex/JetCorrectorParameters::Definitions",
  "LCGReflex/std::pair<int,JetCorrectorParameters>",
  "LCGReflex/std::vector<std::pair<int,JetCorrectorParameters> >",
};
extern "C" void SEAL_CAPABILITIES (const char**& names, int& n )
{names = clnames;n = sizeof(clnames)/sizeof(char*);}
