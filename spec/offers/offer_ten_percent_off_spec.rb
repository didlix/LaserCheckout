require 'spec_helper'

module LaserCheckout

  describe OfferTenPercentOff do

    let(:offer) { OfferTenPercentOff.new }

    it "reduces the price of things by 10% when the total is over £60" do
      basket = [ Product.new("34", 66) ]
      basket = offer.apply_to!(basket)
      total = 0
      basket.each { |item| total+= item.price }
      expect(total).to eq(59.4)
    end

    it "rounds to two decimal places" do
      basket = [ Product.new("34", 66.25) ]
      basket = offer.apply_to!(basket)
      total = 0
      basket.each { |item| total+= item.price }
      expect(total).to eq(59.63)
    end

    it "does nothing when the basket is less than £60" do
      basket = [ Product.new("34", 6) ]
      basket = offer.apply_to!(basket)
      total = 0
      basket.each { |item| total+= item.price }
      expect(total).to eq(6)
    end

  end
end
