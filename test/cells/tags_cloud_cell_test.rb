require 'test_helper'

class TagsCloudCellTest < Cell::TestCase
  test 'show' do
    invoke :show
    assert_select 'p'
  end
end
