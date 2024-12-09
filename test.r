# Testing of hypothesis
    # t test 
    
# ANOVA -> ONE WAY and TWO WAY

# Null hypothesis
# p <= 0.05 reject H0

# Alternative hypothesis
# p > 0.05 accept H0


# Hypothesis:
# H0: mean = 500 (null hypothesis: no difference)
# H1: mean ≠ 500 (alternative hypothesis: there is a difference)

# Sample data
weights = c(498, 502, 501, 499, 503, 497)
# Perform t-test
t_test_result <- t.test(weights, mu=500)
# Print result

# print(t_test_result)


# Hypothesis:
# H0: mean1 = mean2 (no difference)
# H1: mean1 ≠ mean2 (difference exists)

# Sample data
method1 <- c(85, 88, 84, 90, 87)
method2 <- c(80, 79, 82, 78, 81)

# Perform t-test
ind_t_test <- t.test(method1, method2, var.equal = TRUE)

# Print result
# print(ind_t_test)



# Hypothesis:
# H0: mean difference = 0 (no improvement)
# H1: mean difference ≠ 0 (improvement exists)

# Sample data
before <- c(70, 75, 72, 74, 73)
after <- c(78, 80, 79, 77, 81)

# Perform paired t-test
paired_t_test <- t.test(before, after, paired = TRUE)

# Print result
# print(paired_t_test)


# Hypothesis:
# H0: All group means are equal
# H1: At least one group mean is different

# Sample data
study_method <- c(85, 88, 84, 80, 79, 82, 78, 81, 86)
# group <- factor(c(rep("Method1", 3), rep("Method2", 3), rep("Method3", 3)))
group = c('method1','method1','method1', 'method2', 'method2', 'method2', 'method3','method3','method3')
# Perform one-way ANOVA
anova_result <- aov(study_method ~ group)

# Print summary
# print(summary(anova_result))
# print(TukeyHSD(anova_result))

# Hypothesis:
# H0: No interaction or main effects
# H1: Interaction or main effects exist

# Sample data
scores <- c(85, 88, 84, 80, 79, 82, 78, 81, 86, 90, 91, 92)
method <- factor(c(rep("Method1", 6), rep("Method2", 6)))
gender <- factor(c(rep(c("Male", "Female"), each = 3, times = 2)))

# Perform two-way ANOVA
two_way_anova <- aov(scores ~ method * gender)

# Print summary
# print(summary(two_way_anova))






# two anova 

# dat = data.frame(
#     fert = rep(c('f1', 'f2','f3' ), each = 6),
#     seed = rep(c('s1','s2','s3'), each=2, times = 3),
#     effect = c(
#         50,51,52,53,54,55,
#         60,61,62,63,64,65,
#         70,71,72,73,74,75
#     )
# )

# two = aov(effect ~ fert * seed, data = dat)
# print(summary(two))

# one way anova

data = c(12,12,22,64,76,34,98,63,94)
labels = c('A','A','A','B','B','B','C','C','C')

one = aov(data ~ labels)
print(TukeyHSD(one))
print(summary(one))