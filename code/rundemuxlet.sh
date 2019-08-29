#!/bin/bash
#SBATCH --time=36:00:00
#SBATCH --partition=broadwl
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --mem-per-cpu=32G

demuxlet="/project/gilad/software/midway2/demuxlet/bin/demuxlet"

sam=/project2/gilad/reem/singlecellCM/round1/lowpass/CD1/CD1col3/data/CB_UMI_tags/reordered_CD1col3_assigned_sorted_CBUMItags.bam
vcf=/project2/gilad/reem/vcf_fromjohn/my_re_sortedsnps_round1.hg38liftover.exons.vcf.gz
out=/project2/gilad/reem/singlecellCM/round1/lowpass/CD1/CD1col3/demux/CD1col3_demux
$demuxlet --sam $sam --tag-group CB --tag-UMI UB --vcf $vcf --field GT  --out $out --geno-error 0.01

