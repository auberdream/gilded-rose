require_relative '../src/sulfuras.rb'
require_relative '../src/item.rb'

describe Sulfuras do

  before(:each) do
    @item = Item.new("Sulfuras", 5, 5)
  end

  it "does not change the quality" do
    subject.update(@item)
    expect(@item.quality).to eq 5
  end

  it "does not change the sell_in" do
    subject.update(@item)
    expect(@item.sell_in).to eq 5
  end

end
