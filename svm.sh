#!/bin/bash
# 3. svm classiver
	echo "train a svm classifier : `date`\n"
        echo "  the parameter ==>$1"
#	/data/jiayuheng/score/ALIZE_file_multithread/LIA_RAL/bin/Svm --config cfg/svm_train.cfg --vsize 1024&> log/svm_train.log
#	/data/jiayuheng/score/ALIZE_file_multithread/LIA_RAL/bin/Svm --config cfg/svm_train.cfg  &> log/svm_train.log
	/data/jiayuheng/score/ALIZE_file/LIA_RAL/bin/Svm --config cfg/svm_train.cfg --mode train &> log/svm_train.log
#	/data/jiayuheng/score/ALIZE_file/LIA_RAL/bin/Svm --config cfg/svm_test.cfg  &> log/svm_train.log
#	echo "		done, see log/svm_train.log for details : `date`\n"


