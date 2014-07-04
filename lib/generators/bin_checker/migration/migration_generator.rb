require 'rails/generators/migration'
require 'rails/generators/active_record'

module BinChecker
  class MigrationGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    namespace 'bin_checker:migration'

    source_root File.join(File.dirname(__FILE__), 'templates')

    def self.next_migration_number(dirname)
      ActiveRecord::Generators::Base.next_migration_number(dirname)
    end

    def create_migration_file
      migration_template 'migration.rb', 'db/migrate/create_bin_numbers_table.rb' rescue nil
    end
  end
end