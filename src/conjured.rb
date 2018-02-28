require_relative './item_methods.rb'

class Conjured < ItemMethods

  def update(item)
    decrease_sell_in(item)
    decrease_quality(item, DOUBLE_INCREMENT) if not_negative?(item)
  end

  def not_negative?(item)
    item.quality != ( 0 || 1 )
  end

end
