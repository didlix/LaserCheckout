module LaserCheckout
  class Offer

    Dir[File.dirname(__FILE__) + "/offers/*.rb"].each {|f| require f}

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
