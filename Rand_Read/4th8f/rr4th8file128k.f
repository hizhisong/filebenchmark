define fileset name="rr1th1file128k",entries=8,filesize=50m,prealloc,path="/tmp/mnt"

define process name="ranReaderP",instances=1 {
    thread name="ranReaderT",instances=4 {
        flowop openfile name="openOP",filesetname="rr1th1file128k"
        flowop readwholefile name="readOP",filesetname="rr1th1file128k",iosize=128k
        flowop closefile name="closeOP"
   }
}

run 30