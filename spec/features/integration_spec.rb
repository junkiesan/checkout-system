require_relative '../../lib/checkout'
require_relative '../../lib/item'

describe 'Integration Specs' do
  # let(:products) do
  #   [
  #     Item.new(name: 'A', price: 30),
  #     Item.new(name: 'B', price: 20),
  #     Item.new(name: 'C', price: 50),
  #     Item.new(name: 'D', price: 15)
  #   ]
  # end
  let(:products) { Item.new(name, price) }
  let(:name) { "A" }
  let(:price) { 30 }
  let(:name) { "B" }
  let(:price) { 20 }
  let(:name) { "C" }
  let(:price) { 50 }
  let(:name) { "D" }
  let(:price) { 15 }
  subject(:checkout) { Checkout.new products: products }

  it 'Test a £20 discount on basket if price > £150' do
    checkout.scan 'A'
    checkout.scan 'C'
    checkout.scan 'C'
    checkout.scan 'C'

    expect(checkout.total).to eq '£160'
  end
end 