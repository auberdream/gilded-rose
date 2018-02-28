require_relative './item_methods.rb'

class Brie < ItemMethods

  def update(item)
    decrease_sell_in(item)
    increase_quality(item) if quality_under_fifty?(item)
  end


end
