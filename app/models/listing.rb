class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category

  mount_uploader :picture, PictureUploader

  THUMBNAIL_URL = "http://www.latorredelsol.com/press/components/com_easyblog/themes/wireframe/images/placeholder-image.png"

  def thumbnail
    out = picture.url
    out = THUMBNAIL_URL  unless picture.url

    out
  end

end
