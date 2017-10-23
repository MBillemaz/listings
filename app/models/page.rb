class Page < ApplicationRecord

  def self.footer(loc)
    Page.where('locale = ?', loc)
  end
end
