require 'test_helper'

describe Listing do

  before do
    @listing = listings(:noImageListing)
  end

  it "returns the default image url if no image" do
    assert_equal "http://www.latorredelsol.com/press/components/com_easyblog/themes/wireframe/images/placeholder-image.png", @listing.thumbnail
  end

end
