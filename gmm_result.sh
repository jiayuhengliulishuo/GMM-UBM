#!/bin/bash



## 1. GMM_native_only training
#	echo "Train native_only  Model by EM algorithm : `date` "
#	/data/jiayuheng/score/ALIZE_file_multithread/LIA_RAL/bin/TrainWorld --config cfg/TrainWorld_noWarning_native.cfg &> log/TrainWorld_noWarning_native.log
#	echo "		done, see log/TrainWorld_noWarning_native.log for details : `date`\n"
#
## 2. GMM_non_only training
#	echo "Train non_only Model by EM algorithm : `date` "
#	/data/jiayuheng/score/ALIZE_file_multithread/LIA_RAL/bin/TrainWorld --config cfg/TrainWorld_noWarning_non.cfg &> log/TrainWorld_noWarning_non.log
#	echo "		done, see log/TrainWorld_noWarning_non.log for details : `date`\n"

 # 3. 
 	echo "Compute Likelihood of gmm_result : `date`\n"
 	/data/jiayuheng/score/ALIZE_file_multithread/LIA_RAL/bin/ComputeTest --config cfg/gmm_result.cfg &> log/gmm_result.log
 	echo "		done, see log/gmm_result.cfg : `date`\n"
 
# # 4. Speaker model comparison
# 	echo "Compute Likelihood of non : `date`\n"
# 	/data/jiayuheng/score/ALIZE_file_multithread/LIA_RAL/bin/ComputeTest --config cfg/ComputeTest_GMM_noWarning_non.cfg &> log/ComputeTest_noWarning_non.cfg
# 	echo "		done, see log/ComputeTest_noWarning.cfg : `date`\n"
 
