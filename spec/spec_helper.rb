require 'rubygems'
require 'active_admin_environment'
require 'rails/all'
require 'rspec/rails'
require 'ammeter/init'


# カスタムマッチャを書きたかったらここに。
RSpec::Matchers.define :my_matcher do |expected|
  match do |actual|
    true
  end
end
