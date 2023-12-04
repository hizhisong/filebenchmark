define fileset name="sr1th1file1m",entries=8,filesize=50m,prealloc,path="/tmp/mnt"

define process name="seqReaderP",instances=1 {
    thread name="seqReaderT",instances=4 {
        flowop openfile name="openOP",filesetname="sr1th1file1m"
        flowop readwholefile name="readOP",filesetname="sr1th1file1m",iosize=1m
        flowop closefile name="closeOP"
   }
}

run 30