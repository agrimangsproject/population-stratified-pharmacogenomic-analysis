# Population-Stratified Pharmacogenomic Variant Analysis Across Global Populations

## Project Overview

This project analyzes allele frequencies of 10 pharmacogenomic variants using data from the 1000 Genomes Project Phase 3. Population-wise allele frequencies were extracted and compared across African (AFR), European (EUR), East Asian (EAS), and South Asian (SAS) populations.

---

## Objectives

- Extract pharmacogenomic variants from VCF files
- Compare allele frequencies among populations
- Visualize frequency differences
- Interpret pharmacogenomic significance

---

## Tools Used

- Ubuntu WSL
- bcftools
- VCFtools
- R
- ggplot2

---

## Project Structure

```
data/
    regions.txt
    rsids.txt

scripts/
    extract_variants.sh
    analysis.R

results/
    all_variants.txt
    final_10_variants.txt
    frequencies.csv
    pharmacogenomic_barplot.png
```

---

## Populations Compared

- AFR – African
- EUR – European
- EAS – East Asian
- SAS – South Asian

---

## Results

Allele frequencies differed among global populations for several pharmacogenomic variants, highlighting the importance of population-specific pharmacogenomics and personalized medicine.

