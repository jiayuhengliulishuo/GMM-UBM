f1=open('dataCheck.lst','rb')

f3=open('dataPure0.lst','wb')

dataSize=[]
for line in f1.readlines():
    #print line.strip()
    print line.strip().split("\t")
    #print line.strip().split("\t")[0]
    #print type(line.strip().split("\t")[0])
    #print line.strip().split("\t")[0]
    #print len(line.strip().split("\t")[0])
    #print type(line.strip().split("\t")[0])
    print line.strip().split("\t")[1][6:-8]
    if line.strip().split("\t")[0]!="4.0K":#daxie
        print line.strip().split("\t")
        #print "jiayuhengGet it"
        f3.write(line.strip().split("\t")[1][6:-8]+'\n') 
    data= line.strip().split("\t")[0][:-1]
    

f1.close()
f3.close()


