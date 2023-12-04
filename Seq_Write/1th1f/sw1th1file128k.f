define fileset name="sw1th1file128k",entries=1,filesize=50m,prealloc,path="/tmp/mnt"

define process name="seqWriterP",instances=1 {
    thread name="seqWriterT",instances=1 {
        flowop openfile name="openOP",filesetname="sw1th1file128k"
        flowop writeholefile name="writeOP",filesetname="sw1th1file128k",iosize=128k
        flowop closefile name="closeOP"
   }
}

run 30