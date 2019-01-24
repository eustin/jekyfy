#' @export
transfer <- function(overwrite = TRUE, serve = FALSE) {
  # checks
  tryCatch(check_env_vars(c('BLOG_POST_DIR', 'BLOG_DEV_DIR', 'BLOG_PROD_DIR')))
  blog_post_dir <- Sys.getenv('BLOG_POST_DIR')
  blog_dev_dir <- Sys.getenv('BLOG_DEV_DIR')
  blog_prod_dir <- Sys.getenv('BLOG_PROD_DIR')
  tryCatch(check_dirs_exist(blog_post_dir, blog_dev_dir, blog_prod_dir))

  # convert from prod Rmd to prod md

  # do a clean transfer - if md file exists in _posts of prod_dir, delete it before
  # copying md file

  # do the same for assets\post_images

  # copy md file

  # copy _files folder recursively

  # optionally, call jeyll_serve()


}
