scram b clean
scram b -j 32 USER_CXXFLAGS="-g"
cd ../lib/slc6_amd64_gcc472/
ln -s ../../src/Delphes/libDelphes.so libDelphes.so
cd -
scram b -j 32 USER_CXXFLAGS="-g"
