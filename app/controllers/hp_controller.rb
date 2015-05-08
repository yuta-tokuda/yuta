class HpController < ApplicationController



	def prof
		@histories1 = History.where(mode: 1)
		@histories2 = History.where(mode: 2)
		@histories3 = History.where(mode: 3)
		
	end

	def prof2
		@histories4 = History.where(mode: 4)
		@histories5 = History.where(mode: 5)
	end
end
