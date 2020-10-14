require_relative '../../lib/discounts/item_discount'

describe ItemDiscount do
  subject(:item_discount) { described_class.new(item, item_number, discount) }
  let(:item) { "A" }
  let(:item_number) { 3 }
  let(:discount) { 20 }

  describe '#apply' do
    it 'is expected to apply discount on orders with three or more A items' do
      expect(item_discount.apply(90, { item: 3 })).to eq 70
    end

    it 'is expected to not apply a discount on less than 3 A items' do
      expect(item_discount.apply(60, { item: 2 })).to eq 60
    end
  end
end