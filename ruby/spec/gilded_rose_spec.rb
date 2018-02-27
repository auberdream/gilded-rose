require_relative '../src/gilded_rose.rb'
require_relative '../src/items.rb'

describe GildedRose do

  describe "#update_quality" do
    describe "Normal items:" do

      before(:each) do
        @items = [Item.new("normal item", 4, 10),
                  Item.new("normal item", 0, 5),
                  Item.new("normal item", 2, 0),
                  Item.new("normal item", 2, 51)]
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

      it "the quality cannot be negative" do
        expect(@items[2].quality).to eq 0
      end

    end

    describe "Aged Brie:" do

      before(:each) do
        @items = [Item.new("Aged Brie", 4, 0), Item.new("Aged Brie", 4, 50)]
        GildedRose.new(@items).update_quality()
      end

      it "increases the quality by one" do
        expect(@items[0].quality).to eq 1
      end

      it "decreases the sell_in by one" do
        expect(@items[0].sell_in).to eq 3
      end

      it "the quality can never be over 50" do
        expect(@items[1].quality).to eq 50
      end

    end

    describe "Sulfuras, Hand of Ragnaros:" do

      before(:each) do
        @items = [Item.new("Sulfuras, Hand of Ragnaros", 5, 5)]
        GildedRose.new(@items).update_quality()
      end

      it "does not change the quality" do
        expect(@items[0].quality).to eq 5
      end

      it "does not change the sell_in" do
        expect(@items[0].sell_in).to eq 5
      end

    end

    describe "Backstage passes to a TAFKAL80ETC concert:" do

      it "cannot have quality over 50" do
        @items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 12, 50)]
        GildedRose.new(@items).update_quality()
        expect(@items[0].quality).to eq 50
      end

      describe "more than 10 days sell_in" do

        before(:each) do
          @items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 12, 5)]
          GildedRose.new(@items).update_quality()
        end

        it "increases quality by one" do
          expect(@items[0].quality).to eq 6
        end

        it "decreases the sell_in by one" do
          expect(@items[0].sell_in).to eq 11
        end

      end

      describe "less than 11 days, more than 5 days sell_in" do

        before(:each) do
          @items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 10, 5)]
          GildedRose.new(@items).update_quality()
        end

        it "increases quality by two" do
          expect(@items[0].quality).to eq 7
        end

        it "decreases the sell_in by one" do
          expect(@items[0].sell_in).to eq 9
        end

      end

      describe "less than 6 days sell_in" do

        before(:each) do
          @items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 5, 7)]
          GildedRose.new(@items).update_quality()
        end

        it "increases quality by three" do
          expect(@items[0].quality).to eq 10
        end

        it "decreases the sell_in by one" do
          expect(@items[0].sell_in).to eq 4
        end

      end

      describe "0 days sell_in" do

        before(:each) do
          @items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 7)]
          GildedRose.new(@items).update_quality()
        end

        it "decreases quality to 0" do
          expect(@items[0].quality).to eq 0
        end

      end

    end

  end

end
