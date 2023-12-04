define fileset name="sw1th1file32k",entries=8,filesize=50m,prealloc,path="/tmp/mnt"

define process name="seqWriterP",instances=1 {
    thread name="seqWriterT",instances=4 {
        flowop openfile name="openOP",filesetname="sw1th1file32k"
        flowop writeholefile name="writeOP",filesetname="sw1th1file32k",iosize=32k
        flowop closefile name="closeOP"
   }
}

run 30