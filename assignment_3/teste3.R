########################################
# Teste 3 - INF-0612          
# Nome(s): Adriano de Brito Godinho
########################################


## 1 - Maximo Divisor Comum

gcd2 <- function(x, y) {
  if (y == 0) {
    return(x)
  } else {
    return(gcd2(y, x %% y))
  }
}

gcd <- function(...) {
  
  params <- c(...)
  
  maxDivisor <- params[1]
  
  i <- 2
  
  while ( i <= length(params)) {
    maxDivisor <- gcd2(maxDivisor, params[i])
    
    if (maxDivisor == 1) return(1)
    
    i <- i + 1
  }
  
  return(maxDivisor)
}





## 2 - Moda da Idade da Turma

count <- function(vector, element) {
  count <- 0
  for (i in vector) {
    if (i == element) {
      count <- count + 1
    }
  }
  return(count)
}

mode <- function(vector) {
  
  maxCount <- -1;
  modeValues <- c();
  modeValuesLen <- 0;
  
  for ( v in vector ) {
    
    v_count <- count(vector, v)
    
    if (v_count == maxCount) {
  
      modeValuesLen <- modeValuesLen + 1;
      modeValues[modeValuesLen] <- v;
      
    } else if (v_count > maxCount) {
      maxCount <- v_count;
      modeValues <- c(v);
      modeValuesLen <- 1;
    } 
  }
  
  return( unique(modeValues) )
}





## 3 - Binario para Decimal

binToDec <- function(...) {
  
  binToDecImpl <- function(bitVector) {
    
    number <- 0;
    
    i <- length(bitVector);
    
    for( bit in bitVector ){
      i <- i - 1;
      number <- number + (bit * 2^i);
    }
    
    return(number)
  }
  
  result <- NULL
  i <- 1
  for ( bitVector in list(...)) {
    result[i] <- binToDecImpl(bitVector)
    i <- i+1
  }
  
  return(result)
}





## 4 - Ocorrencia de palavras

wordCount <- function(word, text) {
  return(sum(strsplit(toupper(text), split="[ \n.,!?]")[[1]] == toupper(word)))
}



