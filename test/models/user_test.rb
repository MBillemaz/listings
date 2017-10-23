require 'test_helper'

describe User do

  before do
    @seller = users(:seller)
    @admin = users(:admin)
    @buyer = users(:buyer)
  end

  it "returns true if role != admin" do
    assert_equal false, @seller.is_admin?
  end

  it "returns true if role == admin" do
    assert_equal true, @admin.is_admin?
  end

  it "returns full_name" do
    assert_equal "John Doe", @buyer.full_name
  end

end
