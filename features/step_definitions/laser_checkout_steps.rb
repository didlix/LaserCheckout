Given(/^Chad has started the checkout$/) do
  @checkout = LaserCheckout::Checkout.new
end

When(/^he scans a product$/) do
  @checkout.scan("001")
end

Then(/^he should see that product in the basket$/) do
  expect(@checkout.basket).to have_product("001")
end
