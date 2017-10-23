require 'test_helper'

feature "SignUp" do

  describe "as a User" do
    it "can access the homme page" do
      visit '/'

      page.must_have_content I18n.t('main_baseline')
    end
  end

end
