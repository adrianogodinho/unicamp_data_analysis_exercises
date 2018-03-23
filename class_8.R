# Exercicio 1
prime <- function(n) {
  
  i <- 2;
  
  while(i <= sqrt(n)) {
    if(n%%i == 0) {
      return(F)
    }
    i <- i+1
  }
  
  return(T)
}

prime <- Vectorize(prime)

# Exercicio 2

nprime <- function(n) {

  result <- NULL;
  
  resultSize <- 1;
  
  for(i in 2:(n-1)) {
    if(prime(i)) {
      result[resultSize] <- i;
      resultSize <- resultSize + 1
    }
  }
  
  return(result);
}

# Exercício 3

factorize <- function(n) {
  
  primes <- nprime(n);
  
  factors <- NULL;
  
  factorsSize <- 0;
  
  for( i in primes) {
    
    if(n %% i == 0) {
      factorsSize <- factorsSize + 1;
      factors[factorsSize] <- i;
    }
  }
  
  return(factors)
}

####
# Funções de agrupamento
#
# lapply
# sapply
# apply
# mapply
# tapply
#####

L <- list(a = 25:30, b = matrix(1:6, 2, 3), c = rnorm(5), d = sample(10))

lapply(L, mean)

# Using lapply with a data.frame



