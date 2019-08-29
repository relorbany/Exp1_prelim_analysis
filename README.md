# Exp1_prelim_analysis

A [workflowr][] project.

[workflowr]: https://github.com/jdblischak/workflowr


1. Get data on Midway, each fastq pair (Read1+Read2) in its own directory
2. Run Drop-seq alignment pipeline

sbatch --partition=gilad /project2/gilad/spott/Pipelines/dropseq_pipeline/Version-2018-07-02/snakemake.batch \
"-s /project2/gilad/spott/Pipelines/dropseq_pipeline/Version-2018-07-02/Snakefile_fixed_new" \
"--configfile /project2/gilad/spott/Pipelines/dropseq_pipeline/Version-2018-07-02/config_hg38.yaml" \
"--config cell_num=5000" \
"--config proj_dir=/dir/to/data/"

3. Make sure bam files in the CB_UMI_tag directory are sorted in the same way as vcf

sbatch --partition=gilad --wrap="java -jar $PICARD ReorderSam I=YG-RE1-Drop-CD1col1_S1_assigned_sorted_CB_UMI_tags.bam O=reordered_CD1col1_assigned_sorted_CBUMItags.bam R=/project2/gilad/reem/geno_38/hg38.fa.gz CREATE_INDEX=TRUE"

4. Run demuxlet to identify which individual each cell comes from

sbatch --partition=gilad --wrap="bash /project2/gilad/reem/singlecellCM/rundemuxlet.sh"

5. Load and run rstudio on Midway to start using Seurat

module load rstudio
rstudio

