module Elmas
  class SalesEntryLine # < Elmas::BaseEntryLine
    # A sales entry line belongs to a sales entry
    include Elmas::Resource
		
    def base_path
      "salesentry/SalesEntryLines"
    end
		
    def mandatory_attributes
      [:amount_FC, :entry_ID, :GL_account]
    end

    def other_attributes
      [
				:description, :VAT_code
				#:asset, :cost_center, :cost_unit,  :ExtraDutyAmountFC,
				#:extra_duty_percentage, :from, :intra_stat_area
      ]
    end
  end
end
