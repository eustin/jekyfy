#' @export
transfer <- function(overwrite = TRUE) {
  tryCatch(check_env_vars(c('BLOG_POST_DIR', 'BLOG_DEV_DIR')))
  blog_post_dir <- Sys.getenv('BLOG_POST_DIR')
  blog_dev_dir <- Sys.getenv('BLOG_DEV_DIR')
  if (!all(dir.exists(blog_post_dir, dir.exists(blog_dev_dir)))) {
    stop('make sure BLOG_POST_DIR and BLOG_DEV_DIR are both set!')
  }

}

help(package ='roxygen2')
