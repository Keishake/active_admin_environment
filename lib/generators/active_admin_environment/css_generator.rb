require 'generators/active_admin_environment/generator_base'

module ActiveAdminEnvironment
  module Generators
    class CssGenerator < Base
      desc "Generate CSS file each environment in a rails 3 application"
      def copy_css_files
        generate_css_files
      end
    end
  end
end
