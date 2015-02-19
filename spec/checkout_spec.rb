require 'spec_helper'

module LaserCheckout
  describe Checkout do

    let(:a_product) { "001" }
    let(:valid_codes) { ["001", "002", "003"] }
    before(:each) { @checkout = Checkout.new }

    describe "#basket" do

      context "when empty" do
        it "returns an empty array" do
          expect(@checkout.basket).to eq([])
        end
      end

      context "with product" do
        it "returns an array of its products" do
          @checkout.scan(a_product)
          expect(@checkout.basket).to be_kind_of(Array)
          expect(@checkout.basket.first).to be_kind_of(Product)
        end
      end
    end

    describe "#scan" do

      it "returns itself" do
        expect(@checkout.scan(a_product)).to be_kind_of(Checkout)
      end

      context "with a valid code" do
        it "adds products to its basket" do

          valid_codes.each do |code|
            @checkout.scan(code)
            expect(@checkout.basket.last).to be_kind_of(Product)
          end
        end
      end

      context "with an invalid code" do
        it "returns an exception" do
          expect { @checkout.scan("ABC") }.to raise_exception(LaserCheckout::InvalidCodeException, "Invalid code entered: ABC")
        end
      end
    end

    describe "#total" do

      context "with an empty basket" do
        it "returns 0" do
          expect(@checkout.total).to eq(0)
        end
      end

      context "with items in the basket" do
        it "totals the amounts of items in its basket" do
          valid_codes.each do |code|
            @checkout.scan(code)
          end

          expect(@checkout.total).to eq(74.2)
        end
      end
    end

  end
end
