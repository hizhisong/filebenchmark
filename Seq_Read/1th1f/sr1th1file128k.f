define fileset name="sr1th1file128k",entries=1,filesize=50m,prealloc,path="/tmp/mnt"

define process name="seqReaderP",instances=1 {
    thread name="seqReaderT",instances=1 {
        flowop openfile name="openOP",filesetname="sr1th1file128k"
        flowop readwholefile name="readOP",filesetname="sr1th1file128k",iosize=128k
        flowop closefile name="closeOP"
   }
}

run 30