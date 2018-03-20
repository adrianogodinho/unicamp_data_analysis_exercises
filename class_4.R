# Exercício 1
n <- 10
perm <- sample(n); perm
rank_result <- rank(perm); rank_result
dist <- abs(rank_result - seq(from=1, to=n)); dist
entropy <- sum(dist); entropy;

# Exercício 2
v <- c(1,1,2,3,4,4,4,5,10,13);
dup_bol <- duplicated(v); dup_bol
dup <- v[dup_bol]; dup


