library(rJava)
library(xlsxjars)
library(xlsx
workbook<- "F:/work/floating/tb2010-20142010.csv" 
mydataframe<- read.xlsx(workbook,2)

RStudio小技巧：在编辑器中的函数名字上按下F2可以看到函数原代码.
CTRL + L 清屏

# 对区域和语言环境设置
Sys.setlocale("LC_ALL","Chinese")
setwd("f:/work/floating/tb5year/includingcity")
a<- read.table("2014.csv", header = TRUE)
head(a)
Summary(a)
View(a)
library(lattice)
library(survival)
library(Formula)
library(ggplot2)
library(Hmisc)
describe(a)
 
describe.vector(a$uid)









read.csv('f:/work/floating/tb2010-2014/2010.csv',fileEncoding='utf-8')

read.csv('data.csv',fileEncoding='utf-8')