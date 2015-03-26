#!/bin/bash
# 2. utterance GMM model adaptation
	echo "Train each utterance dependent GMMs : `date`\n"
	/data/jiayuheng/score/ALIZE_file_multithread/LIA_RAL/bin/TrainTarget --config cfg/TrainTarget_utterance.cfg &> log/TrainTarget_utterance.log
	echo "		done, see log/TrainTarget_utterance.cfg for details : `date`\n"


