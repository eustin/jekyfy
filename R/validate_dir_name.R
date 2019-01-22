
validate_dir_name <- function(dir_name) {
  #convert the post title to a valid folder name
  pat <- '[^\\w]'
  clean_dir_name <- gsub(pat, '-', dir_name, perl=TRUE)
  # remove any double hyphens caused by replacement
  clean_dir_name <- gsub('-+', '-', clean_dir_name)
  return(clean_dir_name)
}

