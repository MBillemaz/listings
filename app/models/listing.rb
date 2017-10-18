class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :contact
  mount_uploader :picture, PictureUploader
end
