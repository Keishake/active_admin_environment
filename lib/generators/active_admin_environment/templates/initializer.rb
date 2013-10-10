ActiveAdminEnvironment.setup do |config|
  # Set base color each environment by Hash
  # ex. { :ENVIRONMENT_SYMBOL => color_code, .... }
  config.environment_colors = {
    :development => "#5e6469",
    :production  => "#ff0000"
  }
end
