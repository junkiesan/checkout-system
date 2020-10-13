class Basket
  def initialize(products: nil)
    @products_prices = products_with_prices(products)
  end

  def self.total(order)
    order.reduce(0) do |sum, (item, num)|
      sum += cost(item, products) * num
    end
  end

  private

  attr_reader :products_prices

  def cost(item, num)
    products_prices[item] * num
  end

  def products_with_prices(products)
    products.map { |product| [product.name, product.price] }.to_h
  end
end