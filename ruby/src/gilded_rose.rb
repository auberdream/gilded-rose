require_relative './item.rb'
require_relative './backstage.rb'
require_relative './brie.rb'
require_relative './normal.rb'
require_relative './sulfuras.rb'

class GildedRose

  attr_reader :backstage, :normal, :sulfuras, :brie

  def initialize(items,
                 backstage = Backstage.new,
                 brie = Brie.new,
                 normal = Normal.new,
                 sulfuras = Sulfuras.new)
    @items = items
    @backstage = backstage
    @normal = normal
    @sulfuras = sulfuras
    @brie = brie
  end

  def update_quality
    @items.each do |item|
      case item.name
      when 'Aged Brie'
        @brie.update(item)
      when 'Sulfuras, Hand of Ragnaros'
        @sulfuras.update(item)
      when 'Backstage passes to a TAFKAL80ETC concert'
        @backstage.update(item)
      else
        @normal.update(item)
      end
    end
  end

end
