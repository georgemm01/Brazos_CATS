#! /usr/bin/env python
import os
import re
import sys
import subprocess

from optparse import OptionParser

parser = OptionParser()

parser.add_option('--sqlite_file', metavar='F', type='string', action='store',
                  dest='sqlite_file',
                  help='Input sqlite file')

parser.add_option('--era', metavar='F', type='string', action='store',
                  dest='era',
                  help='Input era')


parser.add_option('--prep', metavar='F', action='store_true',
                  dest='prep',
                  help='Upload to prep area')


(options, args) = parser.parse_args()


#******************   template file  **********************************
templateFile = open('templateForDropbox.txt', 'r')
fileContents = templateFile.read(-1)
print '--------------- TEMPLATE :  -----------------'
print fileContents
p1 = re.compile(r'TAGNAME')
p2 = re.compile(r'PRODNAME')

#******************   definitions  **********************************
jec_type    = 'JetCorrectorParametersCollection'
ERA           = options.era
ALGO_LIST  = ['IC5Calo','IC5PF',
                  'AK5Calo','AK5PF','AK5PFchs','AK5JPT','AK5TRK',
                  'AK7Calo','AK7PF','AK7PFchs','AK7JPT',
                  'KT4Calo','KT4PF',
                  'KT6Calo','KT6PF'
                 ]
#*********************************************************************

files = []


### L2+L3 Corrections
for aa in ALGO_LIST: #loop for jet algorithms

    s1 = jec_type + '_' + ERA + '_' + aa
    s2 = jec_type + '_' + ERA + '_' + aa
    k1 = p1.sub( s1, fileContents )
    k2 = p2.sub( s2, k1 )
    k2outfile = s2 + '.txt'
    print '--------------------------------------'
    print 'ORCOFF File for jet correction : ' + s2
    print 'Written to ' + k2outfile
    FILE = open(k2outfile,"w")
    FILE.write(k2)       
    files.append( k2outfile )
    


for ifile in files :
    if options.prep :
        append = '_test'
    else :
        append = ''
    s = "./dropBoxOffline" + append + ".sh "+options.sqlite_file+" " + ifile
    print s
    subprocess.call( ["./dropBoxOffline" + append + ".sh", options.sqlite_file, ifile])
  
