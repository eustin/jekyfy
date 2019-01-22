
create_post_dir_name <- function(post_title, post_date) {
  pat <- '[^\\w]'
  post_folder_name <- gsub(pat, '-', post_title, perl=TRUE)
  post_folder_name <- gsub('-+', '-', post_folder_name)
  post_folder_name <- paste(post_date, post_folder_name, sep = '-')
  return(post_folder_name)
}
