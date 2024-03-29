#' @export
set_blog_env <- function(blog_dev_dir = NULL, blog_prod_dir = NULL,
                            post_title = NULL, post_date = NULL,
                            post_categories = NULL) {

  # if blog_dev_dir hasn't been provided, check whether it exists in system
  # environment
  if (is.null(blog_dev_dir)) {
    check_env_vars('BLOG_DEV_DIR')
    blog_dev_dir <- Sys.getenv('BLOG_DEV_DIR')
    if (!validate_dir_exists(blog_dev_dir)) {
      stop('BLOG_DEV_DIR does not exist. please create using create_blog_dev_dir')
    }
  }
  set_blog_dev_dir(blog_dev_dir)
  if (!is.null(blog_prod_dir)) set_blog_prod_dir(blog_prod_dir)
  if (!is.null(post_title)) set_post_title(post_title)
  if (!is.null(post_date)) set_post_date(post_date)
  if (!is.null(post_categories)) set_post_categories(post_categories)

  print("success!")
}
