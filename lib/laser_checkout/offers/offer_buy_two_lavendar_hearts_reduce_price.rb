module LaserCheckout
  class OfferBuyTwoLavendarHeartsReducePrice < Offer

    private

    def process!(basket)

      lavender_hearts = basket.find_all { |item| item.code == "001" }

      if(lavender_hearts.count > 1)
        basket.each do |item|
          item.price = 8.50 if item.code == "001"
        end
      end

      basket

    end
  end
end
