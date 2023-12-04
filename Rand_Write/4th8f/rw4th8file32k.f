define fileset name="rw4th8file32k",entries=8,filesize=50m,prealloc,path="/tmp/mnt"

define process name="ranWriterP",instances=1 {
    thread name="ranWriterT",instances=4 {
        flowop openfile name="openOP",filesetname="rw4th8file32k"
        flowop write name="writeOP",filesetname="rw4th8file32k",iosize=32k,random
        flowop closefile name="closeOP"
   }
}

run 30
