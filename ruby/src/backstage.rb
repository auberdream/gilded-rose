require_relative './initializer.rb'

class Backstage < Initializer

  def update(item)
    decrease_sell_in(item)
    update_quality(item) if item.quality < 50
  end

  private

  def update_quality(item)
    item.quality += 1 if item.sell_in > 10
    item.quality += 2 if item.sell_in > 5 && item.sell_in < 11
    item.quality += 3 if item.sell_in > 0 && item.sell_in < 6
    item.quality = 0 if item.sell_in == 0
  end
end
