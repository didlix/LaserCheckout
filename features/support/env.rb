require 'rspec'

$LOAD_PATH << File.expand_path('../../../lib', __FILE__)
Dir[File.dirname(__FILE__) + "/../../spec/support/**/*.rb"].each {|f| require f}

require 'laser_checkout'
