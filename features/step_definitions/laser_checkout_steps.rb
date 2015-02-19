Given(/^the new more powerful laser checkout system is fully armed and operational$/) do
  @checkout = LaserCheckout::Checkout.new
end

When(/^I scan a product$/) do
  @checkout.scan("001")
end

Then(/^I should see that product in the basket$/) do
  expect(@checkout.basket).to have_product("001")
end

Given(/^I have scanned some products$/) do
  @checkout = LaserCheckout::Checkout.new
  ["001", "002", "003"].each do |code|
    @checkout.scan(code)
  end
end

When(/^I total the basket$/) do
  @total = @checkout.total
end

Then(/^I should see how much money I owe$/) do
  expect(@total).to eq(74.2)
end
