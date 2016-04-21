# library(rJava)
# library(xlsxjars)
# library(xlsx)
# workbook<- "f:/work/floating/tb5year/includingcity/fl2010.xlsx" 
# mydataframe<- read.xlsx(workbook,1)

# 读入excel 对区域和语言环境设置
Sys.setlocale("LC_ALL","Chinese")
library(readxl)
setwd("f:/work/floating/tb5year/includingcity")
xl2010 <- read_excel("xl2010.xlsx",col_names = TRUE, na = "", col_types = c("numeric","text","text","text","text","date","numeric","text","text","text","text","text","text","text","text","text"),na = "")



#读入csv 对区域和语言环境设置
Sys.setlocale("LC_ALL","Chinese")
options(digits = 2)
load("F:/work/floating/tb5year/includingcity/csv/floatingtb20102014.RData")
library(lattice)
library(survival)
library(Formula)
library(ggplot2)
library(Hmisc)
library(readxl)
library(grid)
setwd("f:/work/floating/tb5year/includingcity/csv")
# 仅读入csv
floatingtb2010<- read.csv("2010.csv", header = TRUE)
head(floatingtb2010)
summary(floatingtb2010)
View(floatingtb2010)
describe.vector(floatingtb2010$首诊断地区)
describe.vector(floatingtb2010$uid)
# 选择部分变量 sub <- subset(floatingtb2010, select = c(uid,市,首诊断地区,BIRTHDAY,非户籍人口原籍地址))

#读入csv时替换
setwd("f:/work/floating/tb5year/includingcity/csv")
fl<- read.csv("2010.csv", header = TRUE, colClasses=c("numeric","text","text","text","text","text","text","date","numeric","text","text","text","text","text","text","text","text","text"))


# 替换空白值为缺失值
# 2010年
Sys.setlocale("LC_ALL","Chinese")
options(digits = 3)
setwd("f:/work/floating/tb5year/includingcity/csv")
floatingtb2010<- read.csv("2010.csv", header = TRUE)
floatingtb2010<- within(floatingtb2010,{
  首诊断地区[首诊断地区 == ""] <- NA
  非户籍人口原籍地址[非户籍人口原籍地址 == ""] <- NA
  市[市 == "#N/A"] <- NA
})
# 2011年
floatingtb2011<- read.csv("2011.csv", header = TRUE)
floatingtb2011<- within(floatingtb2011,{
  首诊断地区[首诊断地区 == ""] <- NA
  非户籍人口原籍地址[非户籍人口原籍地址 == ""] <- NA
  市[市 == "#N/A"] <- NA
})
# 2012年
floatingtb2012<- read.csv("2012.csv", header = TRUE)
floatingtb2012<- within(floatingtb2012,{
  首诊断地区[首诊断地区 == ""] <- NA
  非户籍人口原籍地址[非户籍人口原籍地址 == ""] <- NA
  市[市 == "#N/A"] <- NA
})

# 2013年
floatingtb2013<- read.csv("2013.csv", header = TRUE)
floatingtb2013<- within(floatingtb2013,{
  首诊断地区[首诊断地区 == ""] <- NA
  非户籍人口原籍地址[非户籍人口原籍地址 == ""] <- NA
  市[市 == "#N/A"] <- NA
})


# 2014年
floatingtb2014<- read.csv("2014.csv", header = TRUE)
floatingtb2014<- within(floatingtb2014,{
  首诊断地区[首诊断地区 == ""] <- NA
  非户籍人口原籍地址[非户籍人口原籍地址 == ""] <- NA
  市[市 == "#N/A"] <- NA
})

floatingtb2011 <- floatingtb2011[c(-4,-5)]
floatingtb2012 <- floatingtb2012[c(-4,-5)]
floatingtb2013 <- floatingtb2013[c(-4,-5)]
floatingtb2014 <- floatingtb2014[c(-4,-5)]

# save
save.image(file="floatingtb10102014.RData")

性别<-summary(floatingtb2010$性别)
summary(floatingtb2010$职业)
summary(floatingtb2010$户籍)
summary(floatingtb2010$现住址属于)
summary(floatingtb2010$患者来源)
summary(floatingtb2010$诊断结果)
summary(floatingtb2010$登记分类)
summary(floatingtb2010$治疗分类)
summary(floatingtb2010$省份)

