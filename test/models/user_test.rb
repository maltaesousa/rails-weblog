require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test '#display_name when admin' do
    bob = users(:bob)
    assert_equal'Bob (admin)', bob.display_name
  end
  test '#display_name when not admin' do
    jane = users(:jane)
    assert_equal 'Jane', jane.display_name
  end
end
