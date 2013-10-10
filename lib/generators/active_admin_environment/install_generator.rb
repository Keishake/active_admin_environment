require 'generators/active_admin_environment/generator_base'

module ActiveAdminEnvironment
  module Generators
    class InstallGenerator < Base
      desc "Installs ActiveAdminEnvironment in a rails 3 application"

      def copy_Initializer
        copy_file "initializer.rb", "config/initializers/active_admin_environment.rb"
      end

      def copy_css_files
        generate_css_files
      end
    end
  end
end
