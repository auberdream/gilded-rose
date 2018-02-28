require_relative './initializer.rb'

class Brie < Initializer

  def update(item)
    decrease_sell_in(item)
    increase_quality(item) if quality_under_fifty?(item)
  end


end
