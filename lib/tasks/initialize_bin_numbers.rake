require 'csv'
namespace :bin_numbers do
  task insert: [:environment] do
    bin_file = File.join(File.dirname(__FILE__), 'files/bin.csv')
    bins = CSV.read(bin_file)
    puts 'Start'
    bins.each do |bin|
      number = BinNumber.new
      number.bin_number = bin[0].strip if bin[0]
      number.bank_number = bin[1].strip if bin[1]
      number.bank_name = bin[2].strip if bin[2]
      number.card_type = bin[3].strip if bin[3]
      number.sub_type = bin[4].strip if bin[4]
      number.virtual = true if bin[5]
      number.prepaid = true if bin[6]
      number.save
    end
    puts 'Finish'
  end
end