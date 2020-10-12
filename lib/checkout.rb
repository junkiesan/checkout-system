class Checkout
  def initialize(products: nil, basket: Basket)
    @products = products
    @basket   = basket
    @order    = Hash.new(0)
  end

  def scan(item)
    fail "#{item} is not a valid item" unless item_in_products?(item)
    @order[item] += 1
  end

  def total
    '£%.2f' % order_cost_in_pounds
  end
  private

  attr_reader :products,
              :basket,
              :order

  def order_cost_in_pounds
    basket.total_basket(products, order) / 100
  end

  def item_in_products?(item)
    # Refacto need to check : products.map(&product.name).include?(item)
    products.map{ |product| product.name }.include?(item)
  end
end