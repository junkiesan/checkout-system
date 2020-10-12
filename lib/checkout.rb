class Checkout
  def initialize(products: nil)
    @products = products
    @order    = Hash.new(0)
  end

  def scan(item)
    fail "#{item} is not a valid item" unless item_in_products?(item)
    @order[item] += 1
  end

  def total
    #need basket
  end
  private

  attr_reader :products, 
              :cost,
              :order

  def item_in_products?(item)
    # Refacto need to check : products.map(&product.name).include?(item)
    products.map{ |product| product.name }.include?(item)
  end
end