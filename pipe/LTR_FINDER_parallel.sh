./script/LTR_FINDER_parallel_v1.3/LTR_FINDER_parallel \
    -harvest_out \
    -seq genome.fa \
    -threads 128 \
    -w 2 -C -D 15000 -d 1000 -L 7000 -l 100 -p 20 -M 0.85 \
    -size 1000000 -time 300 \
    1> LTR_FINDER_parallel.log \
    2> LTR_FINDER_parallel.err \

#LTR_FINDER_parallel
#-size   [int]   Specify the size you want to split the genome sequence.
#                Please make it large enough to avoid spliting too many LTR elements. Default 5000000 (bp)
#-time   [int]   Specify the maximum time to run a subregion (a thread).
#                This helps to skip simple repeat regions that take a substantial of time to run. Default: 120 (seconds).


#LTR_FINDER
#-w 2 -C -D 15000 -d 1000 -L 7000 -l 100 -p 20 -M 0.85
#-w NUM     output format: [0]-full, 1-summary, 2-table.
#-C         detect Centriole, delete highly repeat region
#-D NUM     Max distance between 5'&3'LTR, default is 20000
#-d NUM     Min distance between 5'&3'LTR, default is 1000
#-L NUM     Max length of 5'&3'LTR, default is 3500
#-l NUM     Min length of 5'&3'LTR, default is 100
#-p NUM     min length of exact match pair, default is 20
#-M NUM     min LTR similarity threshold, default is 0.00, [0,1]
