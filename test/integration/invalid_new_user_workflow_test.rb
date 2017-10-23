require 'test_helper'

feature "SignUp" do

  describe "as a User" do
    it "can sign in" do
      visit '/users/sign_in'

      #page.must_have_content I18n.t('main_baseline')
    end
  end

end
