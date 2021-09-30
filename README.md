Descripotion:

This repository contains the data and MATLAB code for the "Comprehensive analysis of pathways in Coronavirus 2019 (COVID-19) using unsupervised machine Learning method" paper:

Data sets:

File "Candidate_Genes.xlsx" contains 1,300 Genes as a candidate set of COVID-19 related genes.

File "Signaling_Pathways.xlsx" contains KEGG signaling pathways with more than 10 genes related to Covid-19.

File "Disease_Pathways.xlsx" contains KEGG disease pathways with more than 10 genes related to Covid-19.

To calculate 6 structural feature of pathways from biological network related to COVID-19 pathways, we run an algorithm "Topological_feature.m". To run the algorithm follow the "Read_me.txt" steps. See the output at "Output.txt" file.

To select a top significant pathways related to COVID-19, we evaluated the Laplacian Score values  with respect to "Laplacian_Score_Feature_Selection.m" algorithm (see "Read_me.txt" file).
