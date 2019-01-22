#' @export
# helper function to set post title in blog_env if not set
# use case: to deal with cases where blog_env missing post_title
# because working with new R session.
set_post_title <- function(post_title) {
  Sys.setenv(BLOG_POST_TITLE = post_title)
}
