class Brie

  attr_reader :sell_in, :quality

  def initialize(sell_in, quality)
    @sell_in = sell_in
    @quality = quality
  end

  def update
    @sell_in -= 1
    @quality += 1 if @quality < 50
  end

end
