require 'test_helper'

describe Listing do

  before do
    @listingNoImage = listings(:noImageListing)
  end

  it "returns the default image url if no image" do
    assert_equal "http://www.latorredelsol.com/press/components/com_easyblog/themes/wireframe/images/placeholder-image.png", @listingNoImage.thumbnail
  end

  it "search by keywords" do
    listings = Listing.search(keywords: 'iphone')

    assert_equal 1, listings.length
    assert_equal 'iphone title', listings.first.title
  end

end
