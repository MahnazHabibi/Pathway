"Comprehensive analysis of pathways in Coronavirus 2019 (COVID-19) using unsupervised machine learning method"

Corresponding author: Golnaz Taheri (Email: golnazt@kth.se)
===============================================================================

# A method to calculate topological features.
Version 1.0

To find the informative features in a new dataset, please
prepare your input file in the following format:


Disease/signaling Pathway	proteina #1,protein#2,protein#3,...,protein#n,
---
---
---
---
---
				
Each row refers to a signaling or a disease pathway related to COVID-19 that separates by "\tab" and the name of candidate genes in the pathway that separated by ','.
for example:
hsa04064: NF-kappaB signaling pathway	O00206,P06239,P10415,P07948,P14778,P35354,Q06187,Q8IUD2,Q04759,O14920,P25963,P01375,P01374,O15111,Q13546,P19320,P19784,P48061,P10145,P19438,P68400,P08571,P19838,P67870,P05362,P01584,
==============

The entry point of the code is the script Topological_feature.m
To run the Topological_feature.m, use the following arguments in MATLAB command line:

"Topological_feature"


You will see the following on the command line--
"Please enter the name of pathway file:"
For example: 'Input.txt'



You will see the following on the command line--

"Please enter the name of output file: "
For example: 'Output.txt'

The output file  contains the set of all pathways and their informative features.

===============================================================================

# An unsupervised machine learning method to calculate Laplacian Score for each pathway.
Version 1.0

To calculate the Laplacian Score values in a new dataset, please
prepare your input file in the following format:


Disease/signaling Pathway:Feaure#1,Feature#2,...,Feature#6,
---
---
---
---
---
				
Each row refers to a signaling or a disease pathway related to COVID-19 that separates by ":" and six features of pathway are separated by ','.
You can use the output file of "Topological_feature.m" algorithm.
for example:
hsa04010:MAPK signaling pathway:0.053,42.000,0.333,1.000,0.093,0.960,
==============

The entry point of the code is the script Laplacian_Score.m
To run the Laplacian_Score.m, use the following arguments in MATLAB command line:

"Laplacian_Score(Epsilon,threshold)"

You can define Epsilon and threshold values between 0 to 100 


You will see the following on the command line--
"Please enter the feature file: "
For example: 'Input.txt'



You will see the following on the command line--

"Please enter the name of output file: "
For example: 'Output.txt'

The output file  contains the set of all pathways and their Laplacian Score.

===============================================================================

