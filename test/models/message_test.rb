require 'test_helper'

describe Message do

  it "find the correct message" do
    messages = Message.getMessages(1)

    assert_equal 3, messages.length
    assert_equal 'message two content', messages.first.message
  end

  # it "order corectly the messages" do
  #   messages = Message.getMessages(1)
  #
  #   assert_equal 3, messages.length
  #   assert_equal 'message two content', messages[1].message
  #   assert_equal 'message one content', messages[2].message
  #   assert_equal 'message three content', messages[3].message
  # end

end
