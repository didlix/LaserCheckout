require 'spec_helper'

module LaserCheckout
  describe Offer do
    describe "#apply_to!" do

      before(:each) { @offer = Offer.new }
      let(:basket) { [double, double] }

      it "takes and returns basket" do
        expect(@offer.apply_to!(basket)).to eq(basket)
      end

      it "calls a private apply method" do
        expect(@offer).to receive(:process!)
        @offer.apply_to!(basket)
      end

    end
  end
end
