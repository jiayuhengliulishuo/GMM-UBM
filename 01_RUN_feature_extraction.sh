#!/bin/bash

####################################################################
#	Featrure extraction for speaker verification system based on ALIZE 3.0
#
#	This script is distributed in the hope that it will useful but WITHOUT ANY WARRANTY.
#
#	This tutorial is designed to help getting an hand on the LIA_RAL toolkit  by introducting 
#	the main executables in context.
#
#	Executables used in this script are NOT part of the ALIZE toolkit.
#	The author of this tutorial recommand the use of these tools as he is familiar with.
#	However, acoustic feature extraction is not limited to Spro and HTK and 
#	other tools can be used for this purpose.
#
#	by Anthony Larcher
#		alarcher - at- i2r.a-star.edu.sg
#
#		07/06/2013
####################################################################

# This script extract acoustic features from the RAW files available in the ./data/sph/ directory and generate feature files in ./data/prm/

# Before running this script you should select a configuration  by setting the two following parameters.
# FEATURE_TYPE design the program used to extract the acoustic features: Spro or HTK
#
# In case Spro is selected and that sfbcep is not compiled linked to the SPHERE library, SPHERE files need to be converted into 
# raw PCM files by using the tools provided by the NIST and available at:
#
#	http://www.speech.cs.cmu.edu/comp.speech/Section1/AudioSoftware/nist.html
#
# In this case, set the parameter INPUT_FORMAT to PCM
#  
FEATURE_TYPE="SPro"		# can be SPro or HTK
INPUT_FORMAT="SPH"		# can be SPH or PCM




if [ $INPUT_FORMAT = "SPH" ]; then


	if [ $FEATURE_TYPE = "SPro" ]; then

		# Extract a list of files
		for i in `cat data/data.lst`;do
	                COMMAND_LINE="/data/jiayuheng/score/SProV/spro-5.0/sfbcep -m -k 0.97 -p19 -n 24 -r 22 -e -D -A -F PCM16  $i.raw $i.tmp.prm"
	 		echo $COMMAND_LINE
	      		$COMMAND_LINE
                        mv $i.tmp.prm ./data/prm/
		done

	else	# Extract features using HTK
	
		# Extract a list of files
		COMMAND_LINE="bin/HCopy -C cfg/hcopy_sph.cfg -T 1 -S data/data_htk.scp"
		echo $COMMAND_LINE
		$COMMAND_LINE
	fi
fi

