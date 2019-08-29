#!/bin/bash

# change for every bam file

java -jar $PICARD ReorderSam I=YG-RE1-Drop-CD1col1_S1_assigned_sorted_CB_UMI_tags.bam O=reordered_CD1col1_assigned_sorted_CBUMItags.bam R=/project2/gilad/reem/geno_38/hg38.fa.gz CREATE_INDEX=TRUE
