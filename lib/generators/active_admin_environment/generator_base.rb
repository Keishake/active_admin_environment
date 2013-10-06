module ActiveAdminEnvironment
  module Generators
    class Base < ::Rails::Generators::Base
      def self.source_root
        @_active_admin_environment_source_root ||= File.expand_path("../templates", __FILE__)
      end

      private
      def generate_css_files
        remove_dir "app/assets/stylesheets/active_admin_environment"
        ActiveAdminEnvironment.environment_colors.each do |env, color|
          @env = env.to_s.camelize
          @color = color
          template "active_admin_environment.css.scss.erb", "app/assets/stylesheets/active_admin_environment/#{env}.css.scss"
        end
      end
    end
  end
end
