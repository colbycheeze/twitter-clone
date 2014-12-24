require 'test_helper'

class MicropostTest < ActiveSupport::TestCase

  def setup
    @user = users(:testuser)
    #This is the 'wrong' way to do it. Just leaving it here for reference
    # @micropost = Micropost.new(content: "Lorem ipsum", user_id: @user.id)
    @micropost = @user.microposts.build(content: "Lorem ipsum")
  end

  test "should be valid" do
    assert @micropost.valid?
  end

  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end

  test "post should not exceed 140 chars" do
    @micropost.content = "a" * 141
    assert_not @micropost.valid?
  end

  test "post should not be empty" do
    @micropost.content = "   "
    assert_not @micropost.valid?
  end

  test "Order should be most recent first" do
    assert_equal Micropost.first, microposts(:most_recent)
    #
  end



end
