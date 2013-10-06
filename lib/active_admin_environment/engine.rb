require 'rails/all'

module ActiveAdminEnvironment
  class Engine < Rails::Engine
    if Rails.version >= "3.1"
      initializer "ActiveAdminEnvironment precompile hook" do |app|
        define_envs = ActiveAdminEnvironment.environment_colors.keys.map(&:to_sym)
        if define_envs.include?(Rails.env.to_sym)
          app.config.assets.precompile += %W(active_admin_environment/#{Rails.env.to_s}.css)
          ActiveAdmin.application.register_stylesheet "active_admin_environment/#{Rails.env.to_s}.css"
        end
      end
    end
  end
end
