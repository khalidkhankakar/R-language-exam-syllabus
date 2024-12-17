# simple random sampling
# systematic sampling
# cluster sampling
# Straitiedfied sampling


# systematic sampling
# TeachingSampling

library(TeachingSampling)

d = c("Mon", "Tue", "Wed", "Thu", "Fri","Sat","Sun")




set.seed(1)
sys_samp = S.SY(7,2);sys_samp

# printing the sample for vector d 
# print(d[sys_samp])



# Straitiedfied sampling

set.seed(123)

dataF = data.frame(
    Id = 1:100,
    Gender = sample(c('Male', 'Female'), size = 100, replace = TRUE),
    Income = rnorm(100,50000,1000)
)
# This only print 6 entries of dataframe
# print(head(dataF))

# This prints the whole dataframe
# print(dataF)



