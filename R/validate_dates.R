validate_dates <- function(post_date) {
  tryCatch(as.Date(post_date),
           error = function(e) {
             stop('provide a valid date in YYYY-mm-dd format.')
           })
}

