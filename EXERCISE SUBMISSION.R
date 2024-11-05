library(dplyr)

set.seed(123)
data <- data.frame(
  A = c(1, 2, NA, 4, 5),
  B = c(NA, 2, 3, 4, NA),
  C = c(1, NA, NA, 4, 5)
)

print("Original Data:")
print(data)

impute_median <- function(x) {
  ifelse(is.na(x), median(x, na.rm = TRUE), x)
}

data_imputed <- data %>%
  mutate(across(everything(), impute_median))

print("Imputed Data:")
print(data_imputed)
