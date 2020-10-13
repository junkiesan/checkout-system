require_relative '../lib/checkout'

describe Checkout do
  let(:basket) { double :Basket }
  let(:item) { double :Item, name: 'A' }
  let(:products) { [item] }
  subject(:checkout) { described_class.new(products: products, basket: basket) }

  describe '#scan' do
    it 'is expected to raise an error if item name is not in products' do
      expect { checkout.scan('B') }.to raise_error 'B is not a valid item name'
    end
  end

  describe '#total' do
    it 'is expected to return the cost of the basket' do
      checkout.scan('A')
      checkout.scan('A')

      allow(basket).to receive(:total_basket)
        .with(products, {'A' => 2}).and_return(60)

      expect(checkout.total).to eq '£60'
    end
  end
end
