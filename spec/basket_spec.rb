require_relative '../lib/basket'

describe Basket do
  subject(:basket) { described_class }
  let(:item_A) { double :Item, name: "A", cost: 30 }
  let(:item_B) { double :Item, name: "B", cost: 20 }
  let(:products) { [item_A, item_B] }
  let(:order) { { "A" => 1, "A" => 1 } }

  describe '.total_basket' do
    it 'is expected to calculate the cost of a basket' do
      expect(basket.total_basket(products, order)).to eq 50
    end
  end
end