define fileset name="rr1th1file128k",entries=1,filesize=50m,prealloc,path="/tmp/mnt"

define process name="ranReaderP",instances=1 {
    thread name="ranReaderT",instances=1 {
        flowop openfile name="openOP",filesetname="rr1th1file128k"
        flowop read name="readOP",filesetname="rr1th1file128k",iosize=128k,random
        flowop closefile name="closeOP"
   }
}

run 30