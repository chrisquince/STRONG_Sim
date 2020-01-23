#!/bin/bash

count=0
for ((n=0; n<15; n++))
{
     python3 ./SampleGenerate3.py Select_config_strong50_s15B.json Select_config_strong50_s15D Select_config_strong50_s15D/coverage.tsv -n Reads -s $n > log_$n.out& 

    if [ $count -eq 48 ] ; then

        wait
        count=0
    fi

    let count=count+1
}


