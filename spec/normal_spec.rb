require_relative '../src/normal.rb'
require_relative '../src/item.rb'

describe Normal do

  before(:each) do
    @item = Item.new("normal thing", 4, 3)
  end

  it "decreases the quality by one" do
    expect{ subject.update(@item) }.to change{ @item.quality }.from(3).to(2)
  end

  it "decreases the sell_in by one if sell_in is positive" do
    expect{ subject.update(@item) }.to change{ @item.sell_in }.from(4).to(3)
  end

  it "decreases the sell_in by two if sell_in is negative" do
    item = Item.new("normal thing", 0, 4)
    expect{ subject.update(item) }.to change{ item.quality }.from(4).to(2)
  end

  it "the quality cannot be negative" do
    item = Item.new("normal thing", 4, 0)
    subject.update(item)
    expect(item.quality).to eq 0
  end

end
