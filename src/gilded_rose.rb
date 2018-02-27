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
      item_type(item).update(item)
    end
  end

  private
  def item_type(item)
    return @brie if item.name == "Aged Brie"
    return @sulfuras if item.name == "Sulfuras, Hand of Ragnaros"
    return @backstage if item.name == "Backstage passes to a TAFKAL80ETC concert"
    @normal
  end

end
