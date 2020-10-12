require_relative '../lib/checkout'

describe Checkout do
  let(:item) { double :Item, name: 'A' }
  let(:products) { [item] }
  subject(:checkout) { described_class.new products: products }

  describe '#scan' do
    it 'is expected to raise an error if item name is not in products' do
      expect{ checkout.scan('A') }.to raise_error 'A is not a valid item name'
    end
  end
end