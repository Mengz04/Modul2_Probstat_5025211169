#nomor 1
# poin a
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

delta <- y-x
sd(delta)

#poin b
t.test(y, x, paired = TRUE)

#poin c
#jawaban pada laporan

#nomor 2
library(BSDA)
#poin a
nx <- 100
meanx <- 23500
sdx <- 3900
tsum.test(meanx, sdx, nx, var.equal = TRUE, mu = 20000)


#poin b
tsum.test(meanx, sdx, nx, var.equal = TRUE, mu = 20000)

#poin c
#jawaban pada laporan

#nomor 3
library(mosaic)
#poin a
#jawaban ada pada laporan

#poin b
nx <-19
meanx <- 3.64
sdx <- 1.67

ny<-27
meany <- 2.79
sdy <- 1.32
tsum.test(meanx, sdx, nx, meany , sdy, ny,alternative = "greater", var.equal = TRUE)

#poin c
plotDist(dist ='t', df =2)

#poin d
alpha <- 0.05
qchisq(alpha, df =2, lower.tail = FALSE)

#poin e
#jawaban pada laporan

#poin f
#jawaban pada laporan

#nomor 4
library(ggplot2)
tabel <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"), h=T)
attach(tabel)
names(tabel)

#poin a
tabel$Group <- as.factor(tabel$Group)
tabel$Group = factor(tabel$Group, labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))

class(tabel$Group)

Group1 <- subset(tabel, Group == "Kucing Oren")
Group2 <- subset(tabel, Group == "Kucing Hitam")
Group3 <- subset(tabel, Group == "Kucing Putih")

qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group3$Length)
qqline(Group3$Length)

#poin b
bartlett.test(Length ~ Group, data = tabel)

#poin c
model1 <- lm(Length ~ Group, data = tabel)
anova(model1)

#poin d
#jawaban pada laporan

#poin e
TukeyHSD(aov(model1))

#poin f
ggplot(tabel, aes(Group, Length)) + geom_boxplot() + scale_x_discrete() + xlab("Group") + ylab("Length (cm)")

#nomor 5
library(ggplot2)
library(dplyr)
library(multcompView)
library(readr)
GTL <- read.csv("GTL.csv")
head(GTL)
str(GTL)

#poin a
qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)

#poin b
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)
anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

#poin c
hasil <- group_by(GTL, Glass, Temp) %>% summarise(mean = mean(Light), sd = sd(Light)) %>% arrange(desc(mean))
print(hasil)

#poin d
tukey <- TukeyHSD(anova)
print(tukey)

#poin e
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
hasil$Tukey <- cld$Letters
print(hasil)