svg(file="mdr.svg",width=10,height=8)
# 自定义坐标轴
year <- c(1999, 2004, 2008, 2013)
newmdr <- c(0.041617122, 0.038946163, 0.033254157, 0.032066508)
premdr <- c(0.302325581, 0.231638418, 0.291666667, 0.212765957)
tolmdr <- c(0.085883514, 0.071428571, 0.059701493, 0.050213675)
opar <- par(no.readonly=TRUE)
# 颜色 
n <-6
mygrays <- gray(0:n/n)
# pie(rep(1,4),col=mygrays)
# par()
par(pin=c(4,3),mar=c(6,6,4,2)+0.1,mgp=c(3,1,0))
#mgp参数共有三个值，第一个控制图跟轴标题之间的行数，第二个控制图跟轴标签的行数，第三个值控制图跟轴线之间的行数
plot(year, newmdr, type="b", pch=15, lty=1, ylim=c(0, 0.4), xlab="(a)", ylab="Proportion of MDR", bty="n", xaxt="n",yaxt="n",cex.lab=1.2, cex=1.2, lwd=1.5,col=mygrays[5]) #不绘制x,y轴标签,移除图形四周边框
axis(1, at=c(1999,2004,2008,2013), label=year,las=0, cex.lab=1,cex.axis=1.1,tcl=-.25) #at 绘制刻度线，label标签
#tcl用来指定刻度线长度，正值表示在图形内部绘制刻度线，负值相反。
axis(side=2,at=seq(0,0.4,0.1),las=2, cex.lab=1, cex.axis=1.1, tcl=-0.25)
lines(year, premdr, type="b", pch=17, lty=1,cex=1.2,lwd=1.5,col=mygrays[4])
lines(year, tolmdr, type="b", pch=16, lty=1,cex=1.2,lwd=1.5,col=mygrays[1])
legend(x=1999, y=-0.1, c("new cases, p=0.11", "total, p<0.01","previously treated case, p=0.11"), col=c(mygrays[5],mygrays[4],mygrays[1]), pch=c(15,16,17),lwd=c(1,1,1),lty=c(1,1,1),bty="n", xpd=TRUE)
par(opar)
dev.off()


