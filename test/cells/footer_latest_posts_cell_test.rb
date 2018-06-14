require 'test_helper'

class FooterLatestPostsCellTest < Cell::TestCase
  test 'show' do
    invoke :show
    assert_select 'p'
  end
end
