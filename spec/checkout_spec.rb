require 'spec_helper'

module LaserCheckout
  describe Checkout do

    let(:a_product) { "001" }
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
          valid_codes = ["001", "002", "003"]

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
  end
end
