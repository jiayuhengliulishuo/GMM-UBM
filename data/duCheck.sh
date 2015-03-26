for i in `cat ./dataPure.lst`;do
    COMMAND_LINE="du -sh ./prm/$i.tmp.prm"
    #echo $i.raw
    $COMMAND_LINE >> dataCheck.lst
done


