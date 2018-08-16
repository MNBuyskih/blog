require 'test_helper'

class CategoriesCellTest < Cell::TestCase
  test 'show' do
    invoke :show
    assert_select 'p'
  end
end
