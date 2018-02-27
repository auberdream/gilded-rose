require_relative '../src/backstage.rb'
require_relative '../src/item.rb'

describe Backstage do

  it "cannot have quality over 50" do
    item = Item.new("Backstage", 4, 50)
    subject.update(item)
    expect(item.quality).to eq 50
  end

  describe "more than 10 days sell_in" do

    before(:each) do
      @item = Item.new("Backstage", 12, 10)
    end

    it "increases quality by one" do
      expect{ subject.update(@item) }.to change{ @item.quality }.from(10).to(11)
    end

    it "decreases the sell_in by one" do
      expect{ subject.update(@item) }.to change{ @item.sell_in }.from(12).to(11)
    end

  end

  describe "less than 11 days, more than 5 days sell_in" do

    before(:each) do
      @item = Item.new("Backstage", 9, 10)
    end

    it "increases quality by two" do
      expect{ subject.update(@item) }.to change{ @item.quality }.from(10).to(12)
    end

    it "decreases the sell_in by one" do
      expect{ subject.update(@item) }.to change{ @item.sell_in }.from(9).to(8)
    end

  end

  describe "less than 6 days sell_in" do

    before(:each) do
      @item = Item.new("Backstage", 5, 10)
    end

    it "increases quality by three" do
      expect{ subject.update(@item) }.to change{ @item.quality }.from(10).to(13)
    end

    it "decreases the sell_in by one" do
      expect{ subject.update(@item) }.to change{ @item.sell_in }.from(5).to(4)
    end

  end

  describe "0 days sell_in" do

    before(:each) do
      @item = Item.new("Backstage", 1, 5)
    end

    it "decreases quality to 0" do
      expect{ subject.update(@item) }.to change{ @item.quality }.from(5).to(0)
    end

  end

end
