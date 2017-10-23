require 'test_helper'

describe Conversation do

  it "find the correct messages in the conversation" do
    conversation = Conversation.getConversations(users(:user1))

    assert_equal 3, conversation.length
  end

end
