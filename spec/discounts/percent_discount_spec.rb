require_relative '../../lib/discounts/percent_discount'

describe PercentDiscount do
  subject(:percent_discount) { described_class.new(:percent, :treshold) }
  # let(:percent) { 15 }
  # let(:treshold) { 1000 }

  describe '#apply' do
    it 'is expected to apply a percent discount' do
      expect(percent_discount.apply(1500, {})).to eq 225
    end

    it 'is expected to not apply a discount' do
      expect(percent_discount.apply(500, {})).to eq 0
    end
  end
end