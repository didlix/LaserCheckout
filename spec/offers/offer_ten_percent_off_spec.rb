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

  end
end
