require 'test_helper'

class ViewHelperTest < ActionView::TestCase
	test "format heler" do	
	result = format_datetime(Time.now, :date)
	assert_match /\d{4}年\d{1,2}月\d{1,2}/,result
	end	
end