require 'rubygems'

# カスタムマッチャを書きたかったらここに。
RSpec::Matchers.define :my_matcher do |expected|
  match do |actual|
    true
  end
end
