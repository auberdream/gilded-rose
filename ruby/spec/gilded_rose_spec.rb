require_relative '../src/gilded_rose.rb'
require_relative '../src/items.rb'

describe GildedRose do

  describe "#update_quality" do
    describe "Normal items:" do

      before(:each) do
        @items = [Item.new("normal item", 4, 10), Item.new("normal item", 0, 5), Item.new("normal item", 2, 0)]
        GildedRose.new(@items).update_quality()
      end

      it "decreases the quality by one" do
        expect(@items[0].quality).to eq 9
      end

      it "decreases the sell_in by one if sell_in is positive" do
        expect(@items[0].sell_in).to eq 3
      end

      it "decreases the sell_in by two if sell_in is negative" do
        expect(@items[1].quality).to eq 3
      end

      it "the quality can not be negative" do
        expect(@items[2].quality).to eq 0
      end

    end

    # describe "Aged Brie:" do
    #
    #   it ""
    #
    # end

  end

end
