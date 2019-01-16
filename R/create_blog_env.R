create_blog_env <- function(blog_dev_dir) {

  blog_env <- new.env()

  # create variables in environment if specified
  blog_env$dev_dir <- blog_dev_dir

  # what OS is being used? if windows,i need to explicitly set the
  # jekyll environment to production to produce final blog posts
  blog_env$os <- Sys.info()[['sysname']]

  return(blog_env)
}

