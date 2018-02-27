require_relative '../src/normal.rb'

describe Normal do

  before(:each) do
    @normal_item = Normal.new(4, 3)
  end

  it "decreases the quality by one" do
    expect{ @normal_item.update }.to change{ @normal_item.quality }.from(3).to(2)
  end

  it "decreases the sell_in by one if sell_in is positive" do
    expect{ @normal_item.update }.to change{ @normal_item.sell_in }.from(4).to(3)
  end

  it "decreases the sell_in by two if sell_in is negative" do
    normal_item = Normal.new(0, 4)
    expect{ normal_item.update }.to change{ normal_item.quality }.from(4).to(2)
  end

  it "the quality cannot be negative" do
    normal_item = Normal.new(3,0)
    normal_item.update
    expect(normal_item.quality).to eq 0
  end

end
