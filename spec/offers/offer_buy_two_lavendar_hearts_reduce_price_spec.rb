require 'spec_helper'

module LaserCheckout
  describe OfferBuyTwoLavendarHeartsReducePrice do

    let(:offer) { OfferBuyTwoLavendarHeartsReducePrice.new }

    it "reduces the price of lavendar hearts when buying two or more" do
      basket = [
        Product.new("001", 9.25),
        Product.new("34", 10),
        Product.new("001", 9.25)
      ]
      basket = offer.apply_to!(basket)
      total = 0
      basket.each { |item| total+= item.price }
      expect(total).to eq(27)
    end

    it "changes nothing when fewer than two" do
      basket = [
        Product.new("001", 9.25),
        Product.new("34", 10)
      ]
      basket = offer.apply_to!(basket)
      total = 0
      basket.each { |item| total+= item.price }
      expect(total).to eq(19.25)
    end

  end
end
