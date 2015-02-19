Given(/^Chad has started the checkout$/) do
  @checkout = LaserCheckout::Checkout.new
end

When(/^he scans a product$/) do
  @checkout.scan("001")
end

Then(/^he should see that product in the basket$/) do
  expect(@checkout.basket).to have_product("001")
end

Given(/^Chad has scanned some products$/) do
  @checkout = LaserCheckout::Checkout.new
  ["001", "002", "003"].each do |code|
    @checkout.scan(code)
  end
end

When(/^he totals the basket$/) do
  @total = @checkout.total
end

Then(/^he should see how much money he owes$/) do
  expect(@total).to eq(74.2)
end
