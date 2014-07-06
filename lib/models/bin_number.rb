require 'active_model'
require 'active_model/validations'

class BinNumber < ActiveRecord::Base
  self.table_name = 'bin_checker_bin_numbers'

  def self.get_bank(bin_id)
    ActiveSupport::Deprecation.warn "`self.get_bank` is deprecated and may be removed from future releases.", caller
    bin_number = BinNumber.where(bin_number: bin_id.to_s).try(:first)
    if bin_number.present?
      bin_number
    else
      nil
    end
  end
end
