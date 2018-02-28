class Initializer

  ONE_DAY = 1
  NORMAL_INCREASE = 1
  DOUBLE_INCREASE = 2
  TRIPLE_INCREASE = 3

  def decrease_sell_in(item)
    item.sell_in -= ONE_DAY
  end

  def increase_quality(item, amount = NORMAL_INCREASE)
    item.quality += amount
  end

  def quality_under_fifty?(item)
    item.quality < 50
  end

  def quality_to_zero(item)
    item.quality = 0
  end

end
