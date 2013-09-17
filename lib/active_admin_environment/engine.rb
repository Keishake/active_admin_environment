module ActiveAdminEnvironment
  class Engine < Rails::Engine
    if Rails.version >= "3.1"
      initializer "ActiveAdminEnvironment precompile hook" do |app|
        app.config.assets.precompile += "active_admin_environment/active_admin_#{Rails.env}.css"
        app.config.register_stylesheet "active_admin_#{Rails.env}.css"
      end
    end
  end
end
