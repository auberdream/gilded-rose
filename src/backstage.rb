require_relative './item_methods.rb'

class Backstage < ItemMethods

  def update(item)
    decrease_sell_in(item)
    update_quality(item) if quality_under_fifty?(item)
  end

  private

  def update_quality(item)
    increase_quality(item) if over_ten_days?(item)
    increase_quality(item, DOUBLE_INCREMENT) if six_to_ten_days?(item)
    increase_quality(item, TRIPLE_INCREMENT) if one_to_five_days?(item)
    quality_to_zero(item) if zero_days?(item)
  end

  def over_ten_days?(item)
    item.sell_in > 10
  end

  def six_to_ten_days?(item)
    item.sell_in > 5 && item.sell_in < 11
  end

  def one_to_five_days?(item)
    item.sell_in > 0 && item.sell_in < 6
  end

  def zero_days?(item)
    item.sell_in == 0
  end

  def quality_to_zero(item)
    item.quality = 0
  end
end
