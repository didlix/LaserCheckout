require 'spec_helper'
require 'laser_checkout'

module LaserCheckout
  class OfferFiftyPercentOff < Offer

    private

    def process!(basket)
      basket.each do |item|
        puts item
        item.price = item.price / 2
      end

      basket

    end
  end
end
