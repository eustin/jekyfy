#' @export
set_post_categories <- function(post_categories) {
  Sys.setenv(BLOG_POST_CATEGORIES = paste(post_categories, collapse = ', '))
}
