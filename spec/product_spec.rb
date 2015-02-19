require 'spec_helper'

module LaserCheckout
  describe Product do
    it "has a code" do
      product = Product.new("001")
      expect(product.code).to eq("001")
    end

    it "has a price" do
      product = Product.new("001", 1.23)
      expect(product.price).to eq(1.23)
    end

  end
end
