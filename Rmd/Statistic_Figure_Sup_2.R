
library(tidyverse)

main_path <- '/group/poetsch_projects/poetsch_sc/Stomach_paper_repository'
txt_files <- file.path(main_path,'txt_files')

figures_data <- file.path(main_path,"Figures_data_2")

#### OO77 ####
OO77 = read.delim(file.path(figures_data, "Figure_Sup_2A_ScatterPlot_Log2FC_OO77.txt"))
OO77_sum = as.data.frame(table(OO77$vitro_sig, OO77$vivo_sig))
colnames(OO77_sum) = c("Ex", "In", "Count")
#total gene
sum(OO77_sum$Count)

# %gene regulated 
round(100*(1- 23148/30733),2) #= 24.68 %

# % gene regulated both ex and in
round(100*(664/30733)) #= 2 %

# In 
6634 + 664 #= 7298
# Ex
287 + 664 #= 951


####  OO99 ####
OO99 = read.delim(file.path(figures_data, "Figure_Sup_2A_ScatterPlot_Log2FC_OO99.txt"))
OO99_sum = as.data.frame(table(OO99$vitro_sig, OO99$vivo_sig))
colnames(OO99_sum) = c("Ex", "In", "Count")
#total gene
sum(OO99_sum$Count)

# %gene regulated 
round(100*(1- 27828/30733),2) #= 9.45 %

# % gene regulated both ex and in
round(100*(67/30733),2) #= 0.22 %

#In 
2772 + 67 = 2839
# Ex
66 + 67 = 133



#### OO100 ####
OO100 = read.delim(file.path(figures_data, "Figure_Sup_2A_ScatterPlot_Log2FC_OO100.txt"))
OO100_sum = as.data.frame(table(OO100$vitro_sig, OO100$vivo_sig))
colnames(OO100_sum) = c("Ex", "In", "Count")
#total gene
sum(OO100_sum$Count)

# %gene regulated 
round(100*(1- 27584/30733),2)  #= 10.25 %

# % gene regulated both ex and in
round(100* (79/30733),2) #= 0.26 %

#In
2990 + 79 #= 3069

# Ex
80 + 79 #= 159