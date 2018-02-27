require_relative './initializer.rb'

class Brie < Initializer

  def update(item)
    decrease_sell_in(item)
    item.quality += 1 if item.quality < 50
  end


end
