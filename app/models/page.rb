class Page < ApplicationRecord

    def self.footer(langue)
        return Page.where("langue = :lang", lang: langue)
    end
end