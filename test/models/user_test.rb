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
  test '#minimum_lenght on user password' do
    user = User.new(password: 'yolo')
    assert_not user.valid?
    assert_equal [:password], user.errors.keys
  end
end
