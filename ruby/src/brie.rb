require_relative './initializer.rb'

class Brie < Initializer

  def update
    decrease_sell_in
    @quality += 1 if @quality < 50
  end


end
