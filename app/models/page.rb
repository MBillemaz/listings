class Page < ApplicationRecord

  def self.footer(args)
    if args == "fr"
      Page.where(:locale => 'FR').all
    elsif args == "en"
      Page.where(:locale => 'EN').all
    end
  end
end
