# Exercise 1 --------------------------------------------------------------



plot_mosaic_exercise_1 <-
  data_main_exercise_1 %>%
  ggplot() +
  geom_mosaic(aes(x = product(Actitud, Género), fill = Actitud), show.legend = FALSE) +
  scale_fill_npg() +
  labs(x = 'Género', y = 'Actitud') +
  theme_minimal() +
  theme(
    plot.title   = element_text(vjust = 3),
    axis.title.x = element_text(vjust = -5),
    axis.title.y = element_text(vjust = 7),
    plot.margin  = margin(t = 10, r = 10, b = 30, l = 30)
  )


