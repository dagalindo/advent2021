library(tidyverse)
depths <- read.csv2('data/input.txt', header = FALSE)[,1]
depth_diffs <- diff(depths)
answer1 <- sum(depth_diffs > 0)

# part 2: 1st do rolling sum over 3 reading window
n <- length(depth_diffs)
new_diffs <- depth_diffs[1:(n-2)]+depth_diffs[2:(n-1)]+depth_diffs[3:n]
answer2 <- sum(new_diffs>0)

new_diffs[1:10]
