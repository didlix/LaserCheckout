module LaserCheckout
  class OfferTenPercentOff < Offer

    private

    def process!(basket)

      total = 0
      basket.each do |item|
        total+= item.price
      end

      if total >= 60
        basket.each do |item|
          item.price = (item.price * 0.9).round(2)
        end
      end

      basket

    end
  end
end
