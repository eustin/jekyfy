check_dirs_exist <- function(...) {
  dirs <- list(...)
  check <- lapply(dirs, dir.exists)
  check <- unlist(check)
  if (sum(!check) > 0) {
    missing_dirs <- unlist(dirs[which(!check)])
    if(length(missing_dirs) == 1) {
      error_msg <- sprintf("make sure that path %s exists", missing_dirs)
      stop(error_msg)
    } else {
      error_msg <- sprintf("make sure that these paths exist: \n%s", paste(missing_dirs, collapse = '\n',
                                                                   sep = ''))
      stop(error_msg)
    }
  }
}
