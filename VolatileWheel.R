## Script to create the Volatile Wheel ##
## Idea and data: Dr. Haley Sater
## Script: Rodrigo Amadeu
## Questions rramadeu@ufl.edu
## rramadeu.github.io
## Jun 2nd 2019

library(readxl)
library(dplyr)
library(ggplot2)
library(grDevices)
data=read_excel("color_wheel.xlsx")

data$type <- as.factor(data$type)
tmp <- match(as.character(unique(data$type)),levels(data$type))
data$type <- factor(data$type, levels(data$type)[tmp])

data$descrip <- as.factor(data$descrip)
tmp <- match(as.character(data$descrip),levels(data$descrip))
data$descrip <- factor(data$descrip, levels(data$descrip)[tmp])
descriptPallete <- NULL

for(i in 1:length(levels(data$type))){
    actual.type <- levels(data$type)[i]
    data.tmp = data %>% filter(type==actual.type)
    data.length = nrow(data.tmp)
    for(j in 1:data.length){
        descriptPallete <- c(descriptPallete,
                             adjustcolor(data.tmp$colorHEX[j], alpha.f = 0.95*j/data.length))
    }
}

p1 <- ggplot(data, aes(x=factor(1), fill=type, label=type))+
    geom_bar(width = 1,colour="white")+
    coord_polar("y")+
    guides(fill=FALSE)+
    scale_fill_manual("legend", values = unique(data$colorHEX))+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
          panel.background = element_blank(), axis.line = element_blank(),axis.title.x=element_blank(),
          axis.title.y=element_blank())

p2 <- ggplot(data, aes(x=factor(1), fill=descrip, label=descrip))+
    geom_bar(width = 1,colour="white")+
    coord_polar("y")+
    guides(fill=FALSE)+
    scale_fill_manual("legend", values = descriptPallete)+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
          panel.background = element_blank(), axis.line = element_blank(),axis.title.x=element_blank(),
          axis.title.y=element_blank())


ggsave("center.png",p1,device="png")
ggsave("out.png",p2,device="png")

#install.packages("svglite")
ggsave("center.svg",p1,device="svg")
ggsave("out.svg",p2,device="svg")
