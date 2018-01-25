# path where copies of the author's programs are saved
setwd("H:/Documents/stats/kruschke/ProgramsDoingBayesianDataAnalysis")
# source("ProgramsDoingBayesianDataAnalysis/BernBeta.R")
# source("ProgramsDoingBayesianDataAnalysis/BernGrid.R")
# source("ProgramsDoingBayesianDataAnalysis/HDIofGrid.R")
# source("ProgramsDoingBayesianDataAnalysis/HDIofICDF.R")

# 6.7

binwidth = 1/1000
thetagrid = seq( from=binwidth/2 , to=1-binwidth/2 , by=binwidth )

relprob = thetagrid^2
prior = relprob / sum(relprob)
posterior = BernGrid( thetagrid , prior , c(rep(1,6),rep(0,2)) )
predprob1 = sum( thetagrid * posterior )
predprob1

relprob = (1- thetagrid)^2
prior = relprob / sum(relprob)
posterior = BernGrid( thetagrid , prior , c(rep(1,6),rep(0,2)) )
predprob2 = sum( thetagrid * posterior )
predprob2

.00606 / .0013

# 6.8

binwidth = 1/1000
thetagrid = seq( from=binwidth/2 , to=1-binwidth/2 , by=binwidth )
a = 3
data =  c(rep(1,30),rep(0,20))
posterior = BernBeta( prior=c(a, a) , data )

prior = c(60, 40)
data =  c(rep(1,30),rep(0,20))
posterior = BernBeta( prior, data )

prior = c(50, 50)
data =  c(rep(1,30),rep(0,20))
posterior = BernBeta( prior, data )
