#!/bin/bash

verifybamid="/project/gilad/software/midway2/verifybamid-1.1.3/verifyBamID/bin/verifyBamID"

vcf=/project2/gilad/reem/vcf_fromjohn/my_re_sortedsnps_round1.hg38liftover.exons.vcf.gz
bam=/project2/gilad/reem/singlecellCM/round1/lowpass/CD1/CD1col1/data/CB_UMI_tags/reordered_CD1col1_assigned_sorted_CBUMItags.bam
out=/project2/gilad/reem/singlecellCM/round1/lowpass/CD1/CD1col1/demux/CD1col1_dontignoreRG_verifybam

$verifybamid --vcf $vcf --bam $bam --best --ignoreRG --out $out
