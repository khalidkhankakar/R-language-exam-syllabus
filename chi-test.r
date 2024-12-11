data = matrix(c(2,6,12,8,2,8,8,16,6,12,14,16,4,6,4,6),ncol = 4, nrow = 4, byrow = TRUE)


colnames(data) = c("Milk C", "White C", "Dark C", "Sweet C")
rownames(data) = c("Pakistan", "UK", "USA", "UAE")

print(data)

chi_test = chisq.test(data)

print(chi_test)
