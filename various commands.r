#libary(magrittr)

#if loops
if (this) {
# do that
} else if (that) {
# do something else
} else {
#
}

log()
mean()
t.test()

#x, y, z: vectors.
#w: a vector of weights.
#df: a data frame.
#i, j: numeric indices (typically rows and columns).
#n: length, or number of rows.
#p: number of columns.

typeof(letters)
length(x)
sample(10) + 100
runif(10) > 0.5

for (i in seq_along(x)) {
# body
}

# Equivalent to
i <- 1
while (i <= length(x)) {
# body
i <- i + 1
}

#makes a list
map()