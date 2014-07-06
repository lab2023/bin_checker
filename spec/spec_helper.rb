require 'rubygems'
require 'bundler/setup'
require 'active_model'
require 'active_record'
require 'logger'

Bundler.setup

require 'bin_checker'

ActiveRecord::Base.logger = Logger.new(File.join(File.dirname(__FILE__), "../log/debug.log"))

RSpec.configure do |config|

end
