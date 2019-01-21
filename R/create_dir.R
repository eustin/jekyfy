
create_dir <- function(dir_path) {
  if(!dir.exists(dir_path)) {
    err_warn_msg <- 'provide a valid directory path!'
    tryCatch(dir.create(dir_path),
             error = function(e) {
               message(err_warn_msg)
               message(e)
             },
             warning = function(w) {
               message(err_warn_msg)
               message(w)
             }
    )
  }
}
