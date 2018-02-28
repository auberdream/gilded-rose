require_relative './initializer.rb'

class Normal < Initializer

  def update(item)
    decrease_sell_in(item)
    decrease_quality(item) if quality_not_zero?(item)
    decrease_quality(item) if sell_in_under_one?(item)
  end

  private
  def quality_not_zero?(item)
    item.quality != 0
  end

  def sell_in_under_one?(item)
    item.sell_in <= 0
  end

end
