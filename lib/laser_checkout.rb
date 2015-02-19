module LaserCheckout

  require 'laser_checkout/checkout'
  require 'laser_checkout/product'
  require 'laser_checkout/offer'

  class InvalidCodeException < RuntimeError; end

end
