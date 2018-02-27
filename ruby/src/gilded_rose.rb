require_relative './item.rb'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
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

end
