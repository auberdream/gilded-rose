require_relative '../src/gilded_rose.rb'
require_relative '../src/item.rb'

describe GildedRose do

  it "normal items receive the update method" do
    gilded_rose = GildedRose.new([Item.new(name="+5 Dexterity Vest", sell_in=10, quality=20)], "fakebackstage", "fakebrie", "fakenormal", "fakesulfuras")
    expect(gilded_rose.normal).to receive(:update)
    gilded_rose.update_quality
  end

  it "sulfuras items receive the update method" do
    gilded_rose = GildedRose.new([Item.new(name="Sulfuras, Hand of Ragnaros", sell_in=10, quality=20)], "fakebackstage", "fakebrie", "fakenormal", "fakesulfuras")
    expect(gilded_rose.sulfuras).to receive(:update)
    gilded_rose.update_quality
  end

  it "aged brie receives the update method" do
    gilded_rose = GildedRose.new([Item.new(name="Aged Brie", sell_in=10, quality=20)], "fakebackstage", "fakebrie", "fakenormal", "fakesulfuras")
    expect(gilded_rose.brie).to receive(:update)
    gilded_rose.update_quality
  end

  it "backstage passes receive the update method" do
    gilded_rose = GildedRose.new([Item.new(name="Backstage passes to a TAFKAL80ETC concert", sell_in=10, quality=20)], "fakebackstage", "fakebrie", "fakenormal", "fakesulfuras")
    expect(gilded_rose.backstage).to receive(:update)
    gilded_rose.update_quality
  end

end
