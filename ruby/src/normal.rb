require_relative './initializer.rb'

class Normal < Initializer

  def update
    decrease_sell_in
    @quality -= 1 if @quality != 0
    @quality -= 1 if @sell_in <= 0
  end

end
