# Subsetting an atomic vector
(x <- seq(from = 1, to = 10))

## Keep the first through fourth elements, plus the seventh element
x[c(1, 2, 3, 4, 7)]
x[c(seq(1, 4), 7)] # use a sequence shortcut

## Keep the first through eighth elements, plus the tenth element
x[c(1, 2, 3, 4, 5, 6, 7, 8, 10)]    # long way
x[c(seq(1, 8), 10)]                 # sequence shortcut
x[-9]                               # negative indexing

## Keep all elements with values greater than five
x > 5       # get the index for which values in x are greater than 5
x[x > 5]    # use to subset the vector

## Keep all elements evenly divisible by three
x[x %% 3 == 0]      # use modular division

# Subsetting a list
(y <- list(a = c(1, 2, 3), b = "a string", c = pi, d = list(-1, -5)))

## Subset `a`. The result should be an atomic vector
y[[1]]      # use the index value
y$a         # use the element name
y[["a"]]    # use the element name

## Subset `pi`. The results should be a new list
y["c"]      # correct method
y$c         # incorrect method - the result is a scalar, not a list

## Subset the first and third elements from `y`
y[c(1, 3)]
y[c("a", "c")]
