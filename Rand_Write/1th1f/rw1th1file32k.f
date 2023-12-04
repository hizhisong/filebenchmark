define fileset name="rw1th1file32k",entries=1,filesize=50m,prealloc,path="/tmp/mnt"

define process name="ranWriterP",instances=1 {
    thread name="ranWriterT",instances=1 {
        flowop openfile name="openOP",filesetname="rw1th1file32k"
        flowop write name="writeOP",filesetname="rw1th1file32k",iosize=32k,random
        flowop closefile name="closeOP"
   }
}

run 30