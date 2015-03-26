#!/bin/bash
## 1. UBM training
#	echo "Train Universal Background Model by EM algorithm : `date` "
#	/data/jiayuheng/score/ALIZE_file_multithread/LIA_RAL/bin/TrainWorld --config cfg/TrainWorld.cfg &> log/TrainWorld_512_5.log
#	echo "		done, see log/TrainWorld.log for details : `date`\n"

# 2. Speaker GMM model adaptation
	echo "Train Speaker dependent GMMs : `date`\n"
	/data/jiayuheng/score/ALIZE_file_multithread/LIA_RAL/bin/TrainTarget --config cfg/TrainTarget.cfg &> log/TrainTarget_all.log
	echo "		done, see log/TrainTarget.cfg for details : `date`\n"

# 3. Speaker model comparison
	echo "Compute Likelihood : `date`\n"
	/data/jiayuheng/score/ALIZE_file_multithread/LIA_RAL/bin/ComputeTest --config cfg/ComputeTest_GMM.cfg &> log/ComputeTest_all.log
	echo "		done, see log/ComputeTest.cfg : `date`\n"

