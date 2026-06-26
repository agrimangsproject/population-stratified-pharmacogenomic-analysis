#!/bin/bash

# Extract pharmacogenomic variants from 1000 Genomes VCFs

for chr in 6 10 16 22
do
    echo "Extracting chromosome $chr..."

    bcftools view \
    -R data/regions.txt \
    data/ALL.chr${chr}.phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.vcf.gz \
    -H
done
