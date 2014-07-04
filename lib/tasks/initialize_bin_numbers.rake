require 'csv'
namespace :bin_numbers do
  task insert: [:environment] do
    bin_file = File.join(File.dirname(__FILE__), 'files/bin.csv')
    bins = CSV.read(bin_file)
    puts 'Start'
    bins.each do |bin|
      number = BinNumber.new
      number.bin_number = bin[0] if bin[0]
      number.bank_number = bin[1] if bin[0]
      number.bank_name = bin[2] if bin[0]
      number.card_type = bin[3] if bin[0]
      number.sub_type = bin[4] if bin[0]
      number.virtual = true if bin[0]
      number.prepaid = true if bin[0]
      number.save
    end
    puts 'Finish'
  end
end