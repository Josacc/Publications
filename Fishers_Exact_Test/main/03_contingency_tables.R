
# Exercise 1 --------------------------------------------------------------

table_ex_1 <-
  data_source_ex_1 %>%
  datatable(
    rownames = FALSE,
    class    = "compact stripe cell-border hover row-border",
    options  = list(
      ordering     = FALSE,
      dom          = "t",
      columnDefs   = list(
        list(targets = "_all", className = "dt-left")
      ),
      initComplete = JS(
        "function(settings, json) {",
        "$(this.api().table().node()).css({'font-size': '14px'});",
        "}"
      )
    )
  )


table_contingency_ex_1 <-
  data_source_ex_1 %>%
    select(Actitud, Género) %>%
    mutate(Actitud = str_replace_all(Actitud, c("−" = "Negativa", "\\+" = "Positiva"))) %>%
    table() %>%
    as.data.frame.matrix() %>%
    .[c("Positiva", "Negativa"), ] %>%
    datatable(
      rownames = TRUE,
      class    = "hover",
      options  = list(
        pageLength   = -1,
        ordering     = FALSE,
        dom          = "t",
        columnDefs   = list(
          list(targets = "_all", className = "dt-center" )
        ),
        initComplete = JS(
          "function(settings, json) {",
          "$(this.api().table().node()).css({'font-size': '16px'});",
          "$('thead th').css('font-weight', 'normal');",
          "}"
        )
      )
    )























