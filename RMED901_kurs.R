#--------Dag 1--------####
# Date: 04.09.23
# Author: Marianne Bråtveit
# Filename: 
# Description: 
#
#
# Project:
#-------------------###

a <- 1
b <- 2
y <- a + b
y


#Creating a string variable called my_variable
my_variable <- "There is no such thing as overcommenting"

#Sum variables X1 and X2 
#sum_result <- X1 + X2

5*8

a <- 5
b <- 8
z <- a * b
z

do_this(to_this)
do_that(to_this, to_that, with_those)

a <- 1
b<-2
y <- sum(a,b) #sum is an R function
y

cbind.data.frame()

Sys.Date()

log(100)
log()
args(log)

#Can construct vectors
c(1,2,3)
my_vector<-c("a", "b")
my_vector
c(my_vector, "c")

sqrt(10)

pi <- 3.14159265359
round(pi,2)

word <- "HeLLO"
tolower(word)
toupper(word)

rnorm(100)
y <-rnorm(1000, 100, 15)
args(rnorm)
mean(y)
sd(y)
head(y)
tail(y)

head(rnorm(n = 100, mean =100, sd = 15))

#set.seed virker ved at den unngår å hente random verdier gang på gang.
set.seed(123)
head(rnorm(n = 100, mean = 100, sd = 15))

#Lage matrix ved å bruke cbind
matrix1 <- cbind(c(2, 3, 5),
                 c(3.5, 4, 9),
                 c(2, 5, 5),
                 1:3)
matrix1

typeof(matrix1)
class(matrix1)
matrix1(1,3)

#I matrix2 viser denne at alle blir omgjort til character fordi en matrix bare kan lagre en type data. 
#dvs hvis man har character i matrixen så blir alt til character. I en dataframe kan man ha forskjellige datatyper.
matrix2 <- cbind(A = c(2, 3, 5),
                 B = c("I", "am", "here"),
                 C = c(2, 5, 5),
                 D = c(T, F, T))

matrix2


#cbind.data.frame lager en dataframe som kam ha ulike datatyper
df1 <- cbind.data.frame(A = c(2, 3, 5),
                        B = c("I", "am", "here"),
                        C = c(2, 5, 5),
                        D = c(T, F, T))

df1
typeof(df1)
class(df1)
df1$A
df1[1,"A"]

#En tredje ting som heter list(). Dette er ikke et dataformat, det er som en stor pose med mange små mindre inni. 
list1 <- list(A = c(2, 3, 5, 8, 10),
              B = c("I", "am", "here"),
              C = c(1:100),
              D = c(T, F, T))
list1

typeof(list1)
class(list1)

list1[[2]]

#Accessing elements. Kan finne dem ved å bruke $-tegnet. 

list1$A

#Faktorer er variabler som har et fiksert og kjent antall sett av mulige verdier, kalt nivåer.
#De kan være nyttige dersom man ønsker å vise character-vectors i en ikke-alfabetisk orden.
#Eller hvis du vil begrense de mulige verdiene en variabel kan ha
#Dersom du ønsker å ha et eksplisitt referansenivå

x <- c(3,6,2,10)
mean(x)
sd(x)

#Gir ikke samme resultat som det over og sd får error fordi den bruker kun det første tallet til å kalkulere mean:
mean(3,6,2,10)
sd(3,6,2,10)

x1 <- c(3,6,2,NA)
mean(x1, na.rm = T)

age_vector <- c(10:20, rep(NA,100))
mean(age_vector, na.rm=T)
length(age_vector)
age_vector
is.na(age_vector) #denne funksjonen er nyttig for å sjekke missing values

#is.na kalkulerer hvor mange som er NA (dette fordi T er 1 og F er 0)
sum(is.na(age_vector))

#Kalkulerer hvor mange som ikke er NA
sum(!is.na(age_vector))

x <- c(3,6,2,NA)
x[2]
x[4]

x<- c(3,6,2,NA)
x+1



#--------Dag 2--------####

#Iteration(gjøre det samme igjen og igjen 10 ganger) :
for (i in 1:10){
  j <- i + 1
  print(j)}

for (i in c(2,4,6)){
  j <- i^2
print(j)} 

for (i in c("Erle", "Ingrid", "Ludvig")){
  j <- paste("Hi, i, sep = " ")
  print(j))} 
  
"for" loop is not recommended when you are working with a big dataset

Conditional statements
< 
<=
>
>=
==
!=
&

