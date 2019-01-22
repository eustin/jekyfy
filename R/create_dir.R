
create_dir <- function(dir_path, overwrite = FALSE) {
  if (!overwrite) {
    if(dir.exists(dir_path)) stop('directory already exists...doing nothing')
  }
  dir.create(dir_path)
}
