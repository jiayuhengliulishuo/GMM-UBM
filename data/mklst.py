f1_train_cn=open('traindir_sample_random_cn','rb')
f2_train_en=open('traindir_sample_en','rb')
f3_data_lst=open('data.lst','wb')
f4_data_lst=open('dataPure.lst','wb')
f5=open('native_all.lst','wb')
f6=open('non_all.lst','wb')
cn=[]
zn=[]
cnPure=[]
znPure=[]
for line in f1_train_cn.readlines():
    #print line
    #print line.strip()
    #print line.strip()[:-4]
    cn.append(line.strip()[:-4])
    #print line.strip().split('/')
    #print line.strip().split('/')[-1][:-4]
    cnPure.append(line.strip().split('/')[-1][:-4])

for line in f2_train_en.readlines():
    #print line
    #print '/data/VOXPOP_EN_US_sent_201404/train/traindata/'+line.strip() 
    zn.append('/data/VOXPOP_EN_US_sent_201404/train/traindata/'+line.strip())
    #print line
    #print line.strip().split('/')
    #print line.strip().split('/')[-1]
    znPure.append(line.strip())

for fileiter in range(len(cn)):
    f3_data_lst.write(cn[fileiter]+'\n')
    f3_data_lst.write(zn[fileiter]+'\n')
    f4_data_lst.write(cnPure[fileiter]+'\n')
    f4_data_lst.write(znPure[fileiter]+'\n')
    f5.write(znPure[fileiter]+'\n')
    f6.write(cnPure[fileiter]+'\n')
f1_train_cn.close()
f2_train_en.close()
f3_data_lst.close()
f4_data_lst.close()
f5.close()
f6.close()
