class Basket
  def initialize(products)
    @products = products
  end

  def total_basket(order)
    order.reduce(0) do |sum, (item, num)|
      sum += cost(item, products) * num
    end
  end

private

attr_reader :products

  def cost(item)
    
  end
end