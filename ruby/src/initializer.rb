class Initializer
  attr_reader :sell_in, :quality

  ONE_DAY = 1

  def initialize(sell_in, quality)
    @sell_in, @quality = sell_in, quality
  end

  def decrease_sell_in
    @sell_in -= ONE_DAY
  end

end
