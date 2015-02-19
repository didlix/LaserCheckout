module LaserCheckout
  class Checkout
    attr_accessor :basket

    def initialize
      self.basket = []
    end

    def scan(code)
      case code
      when "001"
        product = Product.new("001", 9.25)
      when "002"
        product = Product.new("002", 45.00)
      when "003"
        product = Product.new("002", 19.95)
      else
        raise(InvalidCodeException, "Invalid code entered: #{code}")
      end

      self.basket << product
      self
    end

    def total
      total = 0

      return total if basket.empty?

      basket.each { |item| total+= item.price }

      return total
    end

  end
end
