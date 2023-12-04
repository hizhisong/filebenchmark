define fileset name="rr1th1file1m",entries=1,filesize=50m,prealloc,path="/tmp/mnt"

define process name="ranReaderP",instances=1 {
    thread name="ranReaderT",instances=1 {
        flowop openfile name="openOP",filesetname="rr1th1file1m"
        flowop read name="readOP",filesetname="rr1th1file1m",iosize=1m,random
        flowop closefile name="closeOP"
   }
}

run 30