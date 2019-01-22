
new_post <- function() {
  require(whisker)

  # have all required variables been set?

  # TO DO - why does this raise two errors?
  tryCatch(check_env_vars(c('BLOG_DEV_DIR', 'BLOG_POST_TITLE', 'BLOG_POST_DATE',
                   'BLOG_POST_CATEGORIES')))

  # if so , let's get them
  blog_dev_dir <- Sys.getenv('BLOG_DEV_DIR')
  post_title <- Sys.getenv('BLOG_POST_TITLE')
  post_date <- Sys.getenv('BLOG_POST_DATE')
  post_categories <- Sys.getenv('BLOG_POST_CATEGORIES')

  # has a valid date been supplied?
  post_date <- validate_dates(post_date)

  # convert the post title to a valid folder name
  # remove any double hyphens caused by replacement
  # concatenate post date
  post_folder_name <- create_post_dir_name(post_title, post_date)

  # create folder in blog dev dir if it doesn't exist
  post_dir <- file.path(blog_dev_dir, post_folder_name)
  create_dir(post_dir, overwrite = FALSE)
  set_blog_post_dir(post_dir)

  # create an assets directory within new folder - this is where any post-related
  # media is stored
  assets_dir <- file.path(post_dir, paste(post_folder_name, 'files', sep = '_'))
  create_dir(assets_dir, overwrite = FALSE)

  # read post template
  post_template <- readLines('dev_post_template.html')
  template_vals <- list(POST_TITLE = post_title, POST_DATE = post_date,
                        POST_CATEGORIES = post_categories,
                        ASSETS_FOLDER = replace_backslashes(assets_dir))
  rendered_post <- whisker.render(post_template, template_vals)

  # output!
  post_file_name <- paste0(post_folder_name, '.Rmd')
  buffer <- file(file.path(post_dir, post_file_name))
  writeLines(rendered_post, buffer)
  close(buffer)

  # Set the post name in env for later
  set_blog_post_file_name(post_file_name)

  print('success!')
}
