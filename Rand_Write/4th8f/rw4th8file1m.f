define fileset name="rw4th8file1m",entries=8,filesize=50m,prealloc,path="/tmp/mnt"

define process name="ranWriterP",instances=1 {
    thread name="ranWriterT",instances=4 {
        flowop openfile name="openOP",filesetname="rw4th8file1m"
        flowop write name="writeOP",filesetname="rw4th8file1m",iosize=1m,random
        flowop closefile name="closeOP"
   }
}

run 30
