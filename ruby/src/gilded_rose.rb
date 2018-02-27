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
      end


  #     if item.name != "Aged Brie" and item.name != "Backstage passes to a TAFKAL80ETC concert"
  #       if item.quality > 0
  #         if item.name != "Sulfuras, Hand of Ragnaros"
  #           item.quality = item.quality - 1
  #         end
  #       end
  #     else
  #       if item.quality < 50
  #         # item.quality = item.quality + 1
  #         if item.name == "Backstage passes to a TAFKAL80ETC concert"
  #           if item.sell_in < 11
  #             if item.quality < 50
  #               item.quality = item.quality + 1
  #             end
  #           end
  #           if item.sell_in < 6
  #             if item.quality < 50
  #               item.quality = item.quality + 1
  #             end
  #           end
  #         end
  #       end
  #     end
  #     # if item.name != "Sulfuras, Hand of Ragnaros"
  #     #   item.sell_in = item.sell_in - 1
  #     # end
  #     if item.sell_in < 0
  #       if item.name != "Aged Brie"
  #         if item.name != "Backstage passes to a TAFKAL80ETC concert"
  #           if item.quality > 0
  #             if item.name != "Sulfuras, Hand of Ragnaros"
  #               item.quality = item.quality - 1
  #             end
  #           end
  #         else
  #           item.quality = item.quality - item.quality
  #         end
  #       else
  #         if item.quality < 50
  #           item.quality = item.quality + 1
  #         end
  #       end
  #     end
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

end
