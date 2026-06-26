library(ggplot2)
library(tidyr)

df <- read.csv("results/frequencies.csv")

long_df <- pivot_longer(
  df,
  cols = c(AFR, EUR, EAS, SAS),
  names_to = "Population",
  values_to = "Frequency"
)

p <- ggplot(
  long_df,
  aes(x = rsID,
      y = Frequency,
      fill = Population)
) +
  geom_bar(
    stat = "identity",
    position = "dodge"
  ) +
  theme_bw() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  ) +
  labs(
    title = "Population-Stratified Allele Frequencies of Pharmacogenomic Variants",
    x = "Pharmacogenomic Variant",
    y = "Allele Frequency"
  )

ggsave(
  "plots/pharmacogenomic_barplot.png",
  plot = p,
  width = 12,
  height = 6,
  dpi = 300
)
