require 'bin_checker'
require 'rails'

module BinChecker
  class Railtie < Rails::Railtie
    railtie_name :bin_checker

    rake_tasks do
      load 'tasks/initialize_bin_numbers.rake'
    end
  end
end