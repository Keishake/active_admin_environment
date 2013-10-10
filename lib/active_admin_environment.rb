require 'active_admin_environment/version'
require 'rails/all'

module ActiveAdminEnvironment
  DEFAULT_COLORS = { :development => "#5e6469", :production => "#ff0000" }
  mattr_accessor :environment_colors
  self.environment_colors = DEFAULT_COLORS

  def self.setup
    yield self
  end
end

require 'active_admin_environment/engine'
