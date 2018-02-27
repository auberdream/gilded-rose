require_relative './items.rb'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      case item.name
      when 'Aged Brie'
        brie_update(item)
      when 'Sulfuras, Hand of Ragnaros'
        sulfuras_update(item)
      when 'Backstage passes to a TAFKAL80ETC concert'
        backstage_pass_update(item)
      else
        normal_update(item)
      end
    end
  end

  def brie_update(item)
    item.quality += 1 if item.quality < 50
    item.sell_in -= 1
  end

  def sulfuras_update(item)
  end

  def backstage_pass_update(item)
    item.quality += 1 if item.sell_in > 10
    item.quality += 2 if item.sell_in > 5 && item.sell_in < 11
    item.quality += 3 if item.sell_in > 0 && item.sell_in < 6
    item.quality = 0 if item.sell_in == 0
    item.sell_in -= 1
  end

  def normal_update(item)
    item.quality -= 1 if item.quality != 0
    item.quality -= 1 if item.sell_in <= 0
    item.sell_in -= 1
  end

end
