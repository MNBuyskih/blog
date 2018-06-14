require 'test_helper'

class LatestsPostsCellTest < Cell::TestCase
  test 'show' do
    invoke :show
    assert_select 'p'
  end
end
