# Exercise 1 --------------------------------------------------------------



data_source_exercise_1 <- tribble(
  ~Participante, ~Género,  ~Puntaje, ~Actitud,
  1,             "Hombre", "+30",    "+",
  2,             "Hombre", "+14",    "+",
  3,             "Hombre", "-21",    "−",
  4,             "Hombre", "+22",    "+",
  5,             "Hombre", "+9" ,    "+",
  6,             "Mujer",  "-22",    "−",
  7,             "Mujer",  "-13",    "−",
  8,             "Mujer",  "-20",    "−",
  9,             "Mujer",  "-7" ,    "−",
  10,            "Mujer",  "+19",    "+",
  11,            "Mujer",  "-31",    "−"
)



data_main_exercise_1 <-
  data_source_exercise_1 %>%
  select(Actitud, Género) %>%
  mutate(Actitud = str_replace_all(Actitud, c("−" = "Negativa", "\\+" = "Positiva")))
