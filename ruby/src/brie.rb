require_relative './item.rb'

class Brie < Item

  def update
    decrease_sell_in
    @quality += 1 if @quality < 50
  end

end
