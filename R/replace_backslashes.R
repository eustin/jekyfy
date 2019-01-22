
replace_backslashes <- function(dir_path) {
  pat <- '[\\+]'
  return(gsub(pat, '/', dir_path))
}
