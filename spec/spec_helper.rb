require 'rubygems'
require 'active_admin_environment'

# カスタムマッチャを書きたかったらここに。
RSpec::Matchers.define :my_matcher do |expected|
  match do |actual|
    true
  end
end
