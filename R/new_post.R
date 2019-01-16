# create new post in my dev folder with some of the front-matter already filled out

blog_env <- create_blog_env('D:\\Desktop\\blog')
post_title <- 'I walk the (train) line - part deux - the weight loss continues'

new_post <- function(blog_env, post_title, post_date = NULL, post_categories = NULL) {

  # post date
  if (!is.null(post_date)) {
    tryCatch()
  }

  # convert the post title to a valid folder name
  pat <- '[^\\w]'
  gregexpr(pat, post_title)
  clean_post_title <- gsub(pat, '-', post_title, perl=TRUE)
  # remove any double hyphens caused by replacement
  clean_post_title <- gsub('-+', '-', clean_post_title)



}
