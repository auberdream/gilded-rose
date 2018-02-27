require_relative '../src/brie.rb'
require_relative '../src/item.rb'

describe Brie do

  describe '#update' do

    before(:each) do
      @item = Item.new(name="Brie", sell_in=5, quality=2)
    end

    it "increases the quality by one" do
      expect{ subject.update(@item) }.to change{ @item.quality }.from(2).to(3)
    end

    it "decreases the sell_in by one" do
      expect{ subject.update(@item) }.to change{ @item.sell_in }.from(5).to(4)
    end

    it "cannot increase the quality beyond 50" do
      item = Item.new(name="Brie", sell_in=5, quality=50)
      subject.update(item)
      expect(item.quality).to eq 50
    end

  end

end
