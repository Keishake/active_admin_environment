module ActiveAdminEnvironment
  class Engine < Rails::Engine
    if Rails.version >= "3.1"
      initializer "ActiveAdminEnvironment precompile hook" do |app|
        if Rails.env.production? || Rails.env.development? || Rails.env.staging?
          app.config.assets.precompile += %W(active_admin_environment/active_admin_#{Rails.env.to_s}.css)
          ActiveAdmin.application.register_stylesheet "active_admin_#{Rails.env.to_s}.css"
        end
      end
    end
  end
end
