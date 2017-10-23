class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :contact
  mount_uploader :picture, PictureUploader

  THUMBNAIL_URL = "http://www.latorredelsol.com/press/components/com_easyblog/themes/wireframe/images/placeholder-image.png"

  def thumbnail
    out = picture.url
    out = THUMBNAIL_URL  unless picture.url

    out
  end

  def self.search(args, user)
    Listing.where("(title LIKE :query OR description LIKE :query) and user_id != :user", query: "%#{args[:keywords]}%", user: user.id)
  end

end
