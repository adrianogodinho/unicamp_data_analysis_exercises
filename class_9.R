con <- url("https://www.ic.unicamp.br/~zanoni/cepagri/cepagri.csv") 

open(con, type = "r")

names <- c("horario", "temp", "vento", "umid", "sensa")

cepagri <- read.table(con, header = FALSE, fill = T, sep = ";", col.names = names)

close(con)

consecutive <- function(vector , k = 1) {
  n <- length(vector)
  
  result <- logical(n)
  
  for (i in (1+k):n)
    if (all(vector[(i-k):(i-1)] == vector[i]))
      result[i] <- TRUE
  
  return(result)
}

# Remove NA
cepagri <- cepagri[!is.na(cepagri[,5]), ]

cepagri$horario <- as.POSIXct(cepagri$horario)

summary(cepagri)

dia <- cepagri$horario >= "2018-03-10" & cepagri$horario < "2018-03-11"; dia

march10cepagri <- cepagri[dia,]; march10cepagri

march10cepagri_plog <- ggplot(march10cepagri, aes(x=data)); march10cepagri_plog

# Plotting Example with faithful data.frame
faithful$id <- 1:length(faithful$eruptions)

g <- ggplot(faithful)

g <- g + geom_histogram(aes(x = waiting)); g


# Example 2

a <- -10:10
b <- a^2 - 2*a+5
c <- 5*a + 20

df <- data.frame(eixox=a, f1=b, f2=c)

p <- ggplot(df, aes(eixox)); p

p <- p + geom_point(aes(y = f1, colour = "Coluna f1")); p

p <- p + geom_line(aes(y = f2, colour = "Coluna f2")); p

p <- p + labs(x = "Teste", y = "Teste2", colour="Legenda", title="Hello Plots"); p

p <- p + theme(plot.title = element_text(hjust = 0.5)); p

