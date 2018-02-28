class Initializer

  ONE_DAY = 1
  NORMAL_INCREASE = 1

  def decrease_sell_in(item)
    item.sell_in -= ONE_DAY
  end

  def increase_quality(item, increase = NORMAL_INCREASE)
    item.quality += increase
  end

  def quality_under_fifty?(item)
    item.quality < 50
  end

end
