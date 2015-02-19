module LaserCheckout

  require 'laser_checkout/checkout'
  require 'laser_checkout/product'

  class InvalidCodeException < RuntimeError; end

end
