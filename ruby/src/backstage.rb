class Backstage

  attr_reader :sell_in, :quality

  def initialize(sell_in, quality)
    @sell_in = sell_in
    @quality = quality
  end

  def update
    @sell_in -= 1
    update_quality if @quality < 50
  end

  private

  def update_quality
    @quality += 1 if @sell_in > 10
    @quality += 2 if @sell_in > 5 && @sell_in < 11
    @quality += 3 if @sell_in > 0 && @sell_in < 6
    @quality = 0 if @sell_in == 0
  end
end
