class PercentDiscount
  def initialize(percent:, threshold:)
    @percent = percent
    @threshold = threshold
  end

  def apply(current_total, order)
    should_discount
  end
end