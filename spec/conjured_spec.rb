require_relative '../src/conjured.rb'
require_relative '../src/item.rb'

describe Conjured do

  describe '#update' do

    before(:each) do
      @item = Item.new(name='Conjured', sell_in=5, quality=10)
    end

    it "decreases the sell_in by one" do
      expect{ subject.update(@item) }.to change{ @item.sell_in }.from(5).to(4)
    end

    it "decreases the quality by two" do
      expect{ subject.update(@item) }.to change{ @item.quality }.from(10).to(8)
    end

    it "cannot decrease the quality past 0" do
      item = Item.new(name='Conjured', sell_in=5, quality=0)
      subject.update(item)
      expect(item.quality).to eq(0)
    end


  end

end
