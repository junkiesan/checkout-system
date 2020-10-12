class Item
  attr_reader :code,
              :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end