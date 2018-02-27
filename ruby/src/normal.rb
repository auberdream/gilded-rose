require_relative './initializer.rb'

class Normal < Initializer

  def update(item)
    decrease_sell_in(item)
    item.quality -= 1 if item.quality != 0
    item.quality -= 1 if item.sell_in <= 0
  end

end
