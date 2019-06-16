#STAMP output barplots

library(ggplot2)


#STAMP data
L1<-read.csv("Level 1.csv")


#jitter 
#Graph
theme_set(theme_bw())


#ggplot2 will plot the different levels of factor Mat in alphabeltical order. To change to the order you want use the command
levels(L1$Mat)
L1$Mat <- factor(L1$Mat, levels = c("Blister", "Flocculent", "Pustular", "Non-lithifying cohesive", "Non-lithifying loosely cohesive"))


F1<-ggplot(L1, aes(x=level1, y=mean,grou=Mat))+geom_errorbar(aes(ymin=mean-SD, ymax=mean+SD),colour="black", alpha=I(1),width=0.25, size=1,position=position_dodge(.9))+geom_point(aes(fill=Mat),color="black",position=position_dodge(0.9),shape=21,size=3,alpha=0.7)+labs(x=NULL,y="Mean Propotion (%)")+theme(axis.title=element_text(size=12),strip.text.x=element_text(size=12),axis.text.y=element_text(size=12),axis.text.x=element_text(size=12))+scale_fill_manual(values=c("cadetblue2","darkslategray4","tomato1","lightpink4","darkorange"))+guides(fill=guide_legend(title="Mat morphology"))+coord_flip()


ggsave(F1,file="L1Functions.tiff",dpi=300,width=175,height=145,units=("mm"),scale=1.25)


F2<-ggplot(L1, aes(x=level1, y=mean,grou=Mat))+geom_errorbar(aes(ymin=mean-SD, ymax=mean+SD),colour="black", alpha=I(1),width=0.25, size=1,position=position_dodge(.9))+geom_bar(aes(fill=Mat),color="black",position=position_dodge(),stat="identity")+labs(x=NULL,y="Mean Propotion (%)")+theme(axis.title=element_text(size=12),strip.text.x=element_text(size=12),axis.text.y=element_text(size=12),axis.text.x=element_text(size=12))+scale_fill_manual(values=c("cadetblue2","darkslategray4","tomato1","lightpink4","darkorange"))+guides(fill=guide_legend(title="Mat morphology"))+coord_flip(ylim=c(1,15))


ggsave(F2,file="L1Functions_bars.tiff",dpi=300,width=175,height=145,units=("mm"),scale=1.25)


#to save as .svg install package and run command
install.packages("svglite")
ggsave(F2,file="L1Functions_bars.svg",dpi=300,width=175,height=145,units=("mm"),scale=1.25)




#Level 3 (top 30)
L3<-read.csv("Level 3.csv")


#ggplot2 will plot the different levels of factor Mat in alphabeltical order. To change to the order you want use the command
levels(L3$Mat)
L3$Mat <- factor(L3$Mat, levels = c("Blister", "Flocculent", "Pustular", "Non-lithifying cohesive", "Non-lithifying loosely cohesive"))


F3<-ggplot(L3, aes(x=level3, y=mean,grou=Mat))+geom_errorbar(aes(ymin=mean-SD, ymax=mean+SD),colour="black", alpha=I(1),width=0.25, size=1,position=position_dodge(.9))+geom_point(aes(fill=Mat),color="black",position=position_dodge(0.9),shape=21,size=3,alpha=0.7)+labs(x=NULL,y="Mean Propotion (%)")+theme(axis.title=element_text(size=12),strip.text.x=element_text(size=12),axis.text.y=element_text(size=12),axis.text.x=element_text(size=12))+scale_fill_manual(values=c("cadetblue2","darkslategray4","tomato1","lightpink4","darkorange"))+guides(fill=guide_legend(title="Mat morphology"))+coord_flip()


ggsave(F3,file="L3Functions.tiff",dpi=300,width=175,height=210,units=("mm"),scale=1.4)


F4<-ggplot(L3, aes(x=level3, y=mean,grou=Mat))+geom_errorbar(aes(ymin=mean-SD, ymax=mean+SD),colour="black", alpha=I(1),width=0.25, size=1,position=position_dodge(.9))+geom_bar(aes(fill=Mat),color="black",position=position_dodge(),stat="identity")+labs(x=NULL,y="Mean Propotion (%)")+theme(axis.title=element_text(size=12),strip.text.x=element_text(size=12),axis.text.y=element_text(size=12),axis.text.x=element_text(size=12))+scale_fill_manual(values=c("cadetblue2","darkslategray4","tomato1","lightpink4","darkorange"))+guides(fill=FALSE)+coord_flip(ylim=c(0.05,0.81))


ggsave(F4,file="L3Functions_bars.tiff",dpi=300,width=175,height=210,units=("mm"),scale=1.2)


ggsave(F4,file="L3Functions_bars.svg",dpi=300,width=175,height=210,units=("mm"),scale=1.2)