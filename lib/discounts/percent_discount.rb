class PercentDiscount
  def initialize(percent:, threshold:)
    @percent = percent
    @threshold = threshold
  end

  def apply(current_total, order)
    should_discount_be_applied?(current_total) ? apply_discount(current_total) : 0
  end

  private

  attr_reader :percent, :threshold

  def should_discount_be_applied?(current_total)
    current_total > treshold
  end

  def apply_discount(current_total)
    current_total * percent / 100
  end
end