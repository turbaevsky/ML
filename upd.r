library(quantmod)
getSymbols('FXPO.L')
getSymbols('KAZ.L')
write.csv(
    data.frame( date=index(FXPO.L), coredata(FXPO.L) ),
    row.names=FALSE,
    file="fxpo2.csv"
)
write.csv(
    data.frame( date=index(KAZ.L), coredata(KAZ.L) ),
    row.names=FALSE,
    file="kaz.csv"
)
