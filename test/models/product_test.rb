require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "product name must be present" do
    product = Product.new
    assert_not product.save, "Saved the product without a name"
  end
end