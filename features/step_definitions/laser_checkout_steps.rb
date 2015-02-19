Given(/^the new more powerful laser checkout system is fully armed and operational$/) do
  offers = [LaserCheckout::OfferTenPercentOff.new]
  @checkout = LaserCheckout::Checkout.new(offers)
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

Given(/^I scan these products: (.*?)$/) do |codes|
  codes.split(", ").each do |code|
    @checkout.scan(code)
  end
end

Then(/^the total owed should be: "(.*?)"$/) do |total|
  expect(@total.to_f).to eq(total.to_f)
end
