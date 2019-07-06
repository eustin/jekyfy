#' @export

blog_init <- function() {
  print('Welcome!')
  
  if (!file.exists('~/.blog_config.yml')) {
    print("Blog config not found. Let's create it.")
    make_config()
  } else {
    print("Blog config found. Loading...")
    read_yaml_config()
  }
}

make_config <- function() {
  require(yaml)
  blog_dev_dir <- readline(prompt="Where is your blog development directory?: ")
  blog_prod_dir <- readline(prompt="Where is your blog production directory: ")
  write_yaml_config(blog_dev_dir, blog_prod_dir)
  set_env_vars(blog_dev_dir, blog_prod_dir)
}


set_env_vars <- function(blog_dev_dir, blog_prod_dir) {
  Sys.setenv(BLOG_DEV_DIR=blog_dev_dir)
  Sys.setenv(BLOG_PROD_DIR=blog_prod_dir)
  print("Set BLOG_DEV_DIR and BLOG_PROD_DIR environment variables.")
}

write_yaml_config <- function(blog_dev_dir, blog_prod_dir) {
  env_vars <- list('BLOG_DEV_DIR'=blog_dev_dir, 'BLOG_PROD_DIR'=blog_prod_dir)
  write_yaml(env_vars, '~/.blog_config.yml')
  print("Blog config file created at ~/.blog_config.yml")
}

read_yaml_config <- function() {
  env_vars <- read_yaml("~/.blog_config.yml")
  set_env_vars(env_vars$BLOG_DEV_DIR, env_vars$BLOG_PROD_DIR)
}

