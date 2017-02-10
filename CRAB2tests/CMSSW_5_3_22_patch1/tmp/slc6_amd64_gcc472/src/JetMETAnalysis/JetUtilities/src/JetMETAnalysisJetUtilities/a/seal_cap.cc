static  const char* clnames[] = {
  "LCGReflex/JRAEvent",
  "LCGReflex/std::vector<JRAEvent>",
  "LCGReflex/edm::Wrapper<std::vector<JRAEvent> >",
  "LCGReflex/edm::Wrapper<JRAEvent>",
};
extern "C" void SEAL_CAPABILITIES (const char**& names, int& n )
{names = clnames;n = sizeof(clnames)/sizeof(char*);}
