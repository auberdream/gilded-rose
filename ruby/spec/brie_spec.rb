require_relative '../src/brie.rb'

describe Brie do

  describe '#update' do

    it "increases the quality by one" do
      brie = Brie.new(5, 2)
      expect{ brie.update }.to change{ brie.quality }.from(2).to(3)
    end

    it "decreases the sell_in by one" do
      brie = Brie.new(5, 2)
      expect{ brie.update }.to change{ brie.sell_in }.from(5).to(4)
    end

    it "cannot increase the quality beyond 50" do
      brie = Brie.new(5, 50)
      brie.update
      expect(brie.quality).to eq 50
    end

  end

end
