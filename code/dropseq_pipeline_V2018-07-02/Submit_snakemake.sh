#!/bin/bash

module load Anaconda3
source activate dropseq

snakemake \
    -kp \
    --ri \
    -j 150 \
    --latency-wait 20 \
    --cluster-config /project2/gilad/spott/Pipelines/dropseq_pipeline/Version-2018-07-02/cluster.json \
    -c "sbatch \
        --mem={cluster.mem} \
        --nodes={cluster.n} \
        --tasks-per-node={cluster.tasks} \
        --partition=broadwl \
        --job-name={cluster.name} \
        --output={cluster.logfile}" \
    $*
