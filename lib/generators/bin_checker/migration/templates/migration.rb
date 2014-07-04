class CreateBinNumbersTable < ActiveRecord::Migration
  def self.up
    create_table :bin_checker_bin_numbers do |t|
      t.string :bin_number, index: true
      t.string :bank_number
      t.string :bank_name
      t.string :card_type
      t.string :sub_type
      t.boolean :virtual, null: false, default: false
      t.boolean :prepaid, null: false, default: false
    end
  end

  def self.down
    drop_table :bin_checker_bin_numbers
  end
end