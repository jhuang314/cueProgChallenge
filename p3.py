from itertools import chain, combinations

# read in the numbers
f = open("./numbers.csv")
nums = []
with open("./numbers.csv") as f:
    for l in f:
        nums = [int(x) for x in  l.split(", ") ]

# get the powerset of an iterable
def powerset(iterable):
    s = list(iterable)
    return chain.from_iterable(combinations(s, r) for r in range(len(s)+1))

# returns true if max of the tuple is equal to sum of the other numbers
def works(x):
    if len(x) == 0:
        return False
    m = max(x)
    return m == sum(set(x) - set([m]))

# print out the number of such subsets
print len([x for x in powerset(nums) if works(x)])
