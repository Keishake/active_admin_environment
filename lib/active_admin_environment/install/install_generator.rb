module ActiveAdminEnvironment
  module Generators
    class InstallGenerator < Rails::Generators::NamedBase
      desc "Installs ActiveAdminEnvironment in a rails 3 application"

      def self.source_root
        @_active_admin_environment_source_root ||= File.expand_path("../templates", __FILE__)
      end

      def copy_css_files
        %w(development staging production).each do |e|
          template "active_admin_#{e}.css.scss", "app/assets/stylesheets/active_admin_#{e}.rb"
        end
      end

    end
  end
end
