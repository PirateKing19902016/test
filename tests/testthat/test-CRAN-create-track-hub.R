library(data.table)
library(testthat)
library(PeakSegPipeline)

chrom.sizes.file <- tempfile()
chrom.sizes <- data.table(chrom="chr10", bases=128616069)
fwrite(chrom.sizes, chrom.sizes.file, sep="\t", col.names=FALSE)
print(chrom.sizes.file)

system.or.stop("bigWigToBedGraph")
