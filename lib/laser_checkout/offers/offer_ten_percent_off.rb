module LaserCheckout
  class OfferTenPercentOff < Offer

    private

    def process!(basket)
      basket.each do |item|
        item.price = item.price * 0.9
      end

      basket

    end
  end
end
