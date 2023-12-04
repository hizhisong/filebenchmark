define fileset name="rr1th1file32k",entries=1,filesize=50m,prealloc,path="/tmp/mnt"

define process name="ranReaderP",instances=1 {
    thread name="ranReaderT",instances=1 {
        flowop openfile name="openOP",filesetname="rr1th1file32k"
        flowop read name="readOP",filesetname="rr1th1file32k",iosize=32k,random
        flowop closefile name="closeOP"
   }
}

run 30