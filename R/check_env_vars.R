check_env_vars <- function(env_vars) {
  check <- Sys.getenv(env_vars)
  if (sum(check == '') > 0) {
    missing_vars <- names(check[which(check == '')])
    if(length(missing_vars) == 1) {
      error_msg <- sprintf("please set %s variable.", missing_vars)
      stop(error_msg)
    } else {
      error_msg <- sprintf("please set these variables: %s", paste(missing_vars, collapse = ', ',
                                                            sep = ''))
      stop(error_msg)
    }
  }
}
