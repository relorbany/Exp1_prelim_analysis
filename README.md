# Exp1_prelim_analysis

A [workflowr][] project.

[workflowr]: https://github.com/jdblischak/workflowr


1. Get data on Midway, with each fastq pair (Read1+Read2) in its own directory.
2. Run Drop-seq alignment pipeline. Change proj_dir to directory with fastq files, and cell_num as needed. (What I've written below points to Seb's pipeline in his directory. I've also copied these files into /project2/gilad/reem/singlecellCM/scripts/dropseq_pipeline_V2018-07-02/ but haven't changed them to point away from Seb's files yet)

sbatch --partition=gilad /project2/gilad/spott/Pipelines/dropseq_pipeline/Version-2018-07-02/snakemake.batch \
"-s /project2/gilad/spott/Pipelines/dropseq_pipeline/Version-2018-07-02/Snakefile_fixed_new" \
"--configfile /project2/gilad/spott/Pipelines/dropseq_pipeline/Version-2018-07-02/config_hg38.yaml" \
"--config cell_num=5000" \
"--config proj_dir=/dir/to/data/"

3. Make sure bam files in the CB_UMI_tag directory are sorted in the same way as vcf file. /project2/gilad/reem/singlecellCM/scripts/run_sortbams.sh

4. Run demuxlet to identify which individual each cell comes from. /project2/gilad/reem/singlecellCM/scripts/rundemuxlet.sh

5. Load and run rstudio module on Midway to use Seurat package.
