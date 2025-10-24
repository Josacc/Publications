# Exercise ----------------------------------------------------------------



test_fisher_exercise_1 <-
  data_main_exercise_1 %>%
  table() %>%
  fisher.test(alternative = "greater")


tabla <- data_main_exercise_1 %>%
  table()

r <- sum(tabla[1, ])
c <- sum(tabla[, 1])
N <- sum(tabla)

# Valor observado
x <- tabla[1, 1]


p_x <- dhyper(x, r, N - r, c)
