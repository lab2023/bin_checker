require 'active_model'
require 'active_model/validations'

class BinNumber < ActiveRecord::Base
  self.table_name = 'bin_checker_bin_numbers'

  def as_json(options={})
    {
      bin_number: bin_number,
      bank_number: bank_number,
      bank_name: bank_name,
      card_type: card_type,
      sub_type: sub_type,
      virtual: virtual,
      prepaid: prepaid
    }
  end

  def self.get_bank(bin_id)
    bin_number = BinNumber.where(bin_number: bin_id.to_s).try(:first)
    if bin_number.present?
      bin_number.as_json
    else
      nil
    end
  end
end