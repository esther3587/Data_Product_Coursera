
Orange Tree Age Predictor
========================================================
author: Shun-Wen Chang   
date: Sat Mar  5 11:25:43 2016

Summary
========================================================

For the Developing Data Products Course Project, I have developed a Shiny Application for predicting orange trees age by using linear fit model on Orange dataset.


Dataset
========================================================
The data we use is from datasets library.



```r
summary(Orange)
```

```
 Tree       age         circumference  
 3:7   Min.   : 118.0   Min.   : 30.0  
 1:7   1st Qu.: 484.0   1st Qu.: 65.5  
 5:7   Median :1004.0   Median :115.0  
 2:7   Mean   : 922.1   Mean   :115.9  
 4:7   3rd Qu.:1372.0   3rd Qu.:161.5  
       Max.   :1582.0   Max.   :214.0  
```



Model
========================================================

We use linear regression model lm to do the fitting.


```r
library(datasets)
data(Orange)
fit<- lm(age~circumference,data=Orange)
plot(Orange$circumference,Orange$age, xlab = "Tree Circumference (mm)",ylab="Tree Age (year)",col = 'blue',pch=16,cex=1.5)
abline(fit,lwd=2)
```

![plot of chunk unnamed-chunk-2](presentation1-figure/unnamed-chunk-2-1.png) 

Shiny App
========================================================

You can find this Shiny App at https://estherchang.shinyapps.io/OrangeTree/

![application](treepredictor.png)

More information and source code:
https://github.com/esther3587/Data_Product_Coursera
