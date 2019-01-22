#' @export
# helper function to set post date in blog_env if not set
# use case: to deal with cases where blog_env missing post_date
# because working with new R session.
set_post_date <- function(post_date) {
  validate_dates(post_date)
  Sys.setenv(BLOG_POST_DATE = post_date)
}
