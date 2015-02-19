module LaserCheckout
  class Offer

    def apply_to!(basket)
      process!(basket)
      basket
    end

    private

    # implement and extend in your class
    def process!(basket)
      basket
    end

  end
end
