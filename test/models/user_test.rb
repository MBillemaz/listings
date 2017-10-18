require 'test_helper'

describe User do

  before do
    @user = users(:seller)
    @admin = users(:admin)
  end

  it "returns false if user role != admin" do
    assert_equal false, @user.is_admin?
  end

  it "returns true if user role == admin" do
    assert_equal true, @admin.is_admin?
  end

  it "return the correct full name for the user" do
    assert_equal "seller seller last name", @user.full_name
  end

end
