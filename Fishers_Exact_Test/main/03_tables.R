# Exercise  --------------------------------------------------------------

table_exercise_1 <-
  data_source_exercise_1 %>%
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



table_contingency_exercise_1 <-
  data_main_exercise_1 %>%
    table() %>%
    as.data.frame.matrix() %>%
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
