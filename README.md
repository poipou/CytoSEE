## CytoSEE: R based toolkit for automatic computation and evaluation of cytometry data




### Workflow of CytoSEE
![CytoSEE](http://bis.zju.edu.cn/CytoSEE/cytosee_workflow.png)

### Installation

```R
# you need install devtools first
install.packages("devtools")
# then Bioinstaller should also be installed
source("http://bioconductor.org/biocLite.R")

# install other tools from github
devtools::install_github("JinmiaoChenLab/Rphenograph")
devtools::install_github("madlogos/recharts")

biocLite(c("FlowSOM","SamSPEATRAL","flowMeans"))
install.package(c("Rtsne","largeVis","hexbin"))

# install CytoSEE from github
devtools::install_github("mingchen-lab/cytosee")

```

### Usage 
```R
# CytoSEE start with one command in your IDE(R/Rstudio)
library("cytosee")
cytosee_go()
```

### Document

Here we present a sample example to show how to use the Cytosee