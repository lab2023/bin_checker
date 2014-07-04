require 'spec_helper'

describe 'Check Bin Numbers' do

  let(:invalid_numbers) { %w(24234234 4534 342341 545345) }
  let(:valid_numbers)   { %w(444677 409084 413252) }

  it 'should be valid' do
    valid_numbers.each { |bin_id|  BinNumber.get_bank(bin_id).nil?.should be_false }
  end

  it 'should be invalid' do
    invalid_numbers.each { |bin_id| BinNumber.get_bank(bin_id).nil?.should be_true }
  end

end