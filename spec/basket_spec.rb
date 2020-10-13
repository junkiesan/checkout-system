require_relative '../lib/basket'

describe Basket do
  subject(:basket) { described_class }
  let(:item_A) { double :Item, name: "A", price: 30 }
  let(:item_B) { double :Item, name: "B", price: 20 }
  let(:products) { [item_A, item_B] }
  let(:order) { { "A" => 1, "A" => 1 } }

  describe '#total' do
    it 'is expected to calculate the cost of a basket' do
      order = { "A" => 1, "A" => 1 }
      expect(basket.total_basket(order)).to eq 50
    end

    it 'is expected to apply a discount' do
      # allow().to receive().and_return
      order = { "A" => 3 }
      expect(basket.total_basket(order)).to eq
    end
  end
end