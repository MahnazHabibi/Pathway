Descripotion:

This repository contains the data and MATLAB code for the "Comprehensive analysis of pathways in Coronavirus 2019 (COVID-19) using unsupervised machine Learning method" paper:

Data set:

File "Candidate_Genes.xlsx" contains 1,300 Genes as a candidate set of COVID-19 related genes.

File "Signaling_Pathways.xlsx" contains KEGG signaling pathways with more than 10 genes related to Covid-19.

File "Disease_Pathways.xlsx" contains KEGG disease pathways with more than 10 genes related to Covid-19.

To construct 
To calculate 6 stuctural features of pathways from PPI networks, we run an algorithm "Topological_Network.m". To run the algorithm follow the "Read_me.txt" steps. See the output at "Output.txt" file. Two other features (Cov(v) and ClD(v)) are calculated by Covid-Drug and Clinical-Drug groups reported in DrugBank.

To select a final set of candidate proteins related to disease pathology, we evaluated these proteins with respect to the related pathways with DAVID tools (see "pathway related essential genes.xlsx" file).
