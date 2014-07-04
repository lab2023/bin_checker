require 'bin_checker/version'
require 'models/bin_number'

module BinChecker
  require 'bin_checker/railtie' if defined?(Rails)
end
