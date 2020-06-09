# Comparing time elapsed for solve() and fwdsolve/bwdsolve
# Using solve() in R is not efficient!
# Idea of Gaussian Elimination

A=matrix(1:1000000, c(1000,1000))
A[upper.tri(A)]=0
B=matrix(5:1000004, c(1000,1000))
x=solve(A)%*%B
y=forwardsolve(A,B)
is.logical(x==y)
system.time(x)
system.time(y)
