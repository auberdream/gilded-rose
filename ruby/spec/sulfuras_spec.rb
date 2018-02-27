require_relative '../src/sulfuras.rb'

describe Sulfuras do

  before(:each) do
    @sulfuras = Sulfuras.new(5,5)
  end

  it "does not change the quality" do
    @sulfuras.update
    expect(@sulfuras.quality).to eq 5
  end

  it "does not change the sell_in" do
    @sulfuras.update
    expect(@sulfuras.sell_in).to eq 5
  end

end
