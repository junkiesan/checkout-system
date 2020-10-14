class ItemDiscount

  def initialize(item, item_number, discount)
    @item        = item
    @item_number = item_number
    @discount    = discount
  end
  
  def apply(current_total, order)
    if discount?(order)
      apply_discount(order)
    else
      return 0
    end
  end

  private

  attr_reader :item,
              :item_number,
              :discount

  def discount?(order)
    order[item] >= item_number
  end

  def apply_discount(order)
    order[item] * discount
  end
end