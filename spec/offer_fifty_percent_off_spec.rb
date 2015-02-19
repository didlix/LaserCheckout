require 'spec_helper'
require 'offer_fifty_percent_off'

module LaserCheckout
  describe OfferFiftyPercentOff do

    let(:offer) { OfferFiftyPercentOff.new }

    it 'reduces the price of everything by 50%' do
      basket = [ Product.new("34", 10) ]
      expect(offer.apply_to!(basket).first.price).to eq(5)
    end

  end
end
