# sieve!
def primes(n):
    if n<=2:
        return []
    sieve=[True]*(n+1)
    for x in range(3,int(n**0.5)+1,2):
        for y in range(3,(n//x)+1,2):
            sieve[(x*y)]=False

    return [2]+[i for i in range(3,n,2) if sieve[i]]

primeNums = primes(900000)
primeNumsSet = set(primeNums)

#find smallest prime fib number > n
def fibs(n):
    f1 = 1
    f2 = 1
    while (f2 < n or f2 not in primeNumsSet):
        temp = f1
        f1 = f2
        f2 += temp

    return f2

X = fibs(227000) + 1

#compute the sum
total = 0
for p in primeNums:
    if X % p == 0:
        total += p
    elif p > X:
        break

print total
