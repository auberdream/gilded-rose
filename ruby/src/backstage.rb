require_relative './item.rb'

class Backstage < Item

  def update
    decrease_sell_in
    update_quality if @quality < 50
  end

  private

  def update_quality
    @quality += 1 if @sell_in > 10
    @quality += 2 if @sell_in > 5 && @sell_in < 11
    @quality += 3 if @sell_in > 0 && @sell_in < 6
    @quality = 0 if @sell_in == 0
  end
end
