#!/bin/bash
# 2. get sv of each utterance  form gmm
	echo "get sv of each utterance  form gmm : `date`\n"
	/data/jiayuheng/score/ALIZE_file_multithread/LIA_RAL/bin/ModelToSv --config cfg/ModelToSv.cfg &> log/ModelToSv.log
	echo "		done, see log/ModelToSv.log for details : `date`\n"


