class ItemMethods

  ONE_DAY = 1
  NORMAL_INCREMENT = 1
  DOUBLE_INCREMENT = 2
  TRIPLE_INCREMENT = 3

  def decrease_sell_in(item)
    item.sell_in -= ONE_DAY
  end

  def increase_quality(item, amount = NORMAL_INCREMENT)
    item.quality += amount
  end

  def decrease_quality(item, amount = NORMAL_INCREMENT)
    item.quality -= amount
  end

  def quality_under_fifty?(item)
    item.quality < 50
  end

end
