#!/usr/bin/env Rscript

#This R script is used to plot phylogenetic trees in the mid-point rooting format
#Usage: Rscript PlotMidPointRootTree.R input.tre output.ps

args = commandArgs(trailingOnly=TRUE)

library(phytools)
T <- read.tree(args[1])
postscript(args[2])
plot(midpoint.root(T), show.node.label = TRUE)
dev.off()
