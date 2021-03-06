n <- 40
a <- 2
b <- -3
sig_sq <- 0.5
x <- runif(n)
y <- a + b * x + rnorm(n, sd = sqrt(sig_sq))
(avg_x <- mean(x))

write(avg_x, "avg_x.txt")
plot(x, y)
abline(a, b, col = "purple")
dev.print(pdf, "toy_line_plot.pdf")

## install if needed (do this exactly once):
##install.packages("usethis")

library(usethis)
use_git_config(user.name = "Erin Giles", user.email = "egiles@tamu.edu")
