require_relative '../../lib/checkout'
require_relative '../../lib/item'

describe 'Integration Specs' do
  let(:products) do
    [
      Item.new(name: 'A', price: 30),
      Item.new(name: 'B', price: 20),
      Item.new(name: 'C', price: 50),
      Item.new(name: 'D', price: 15)
    ]
  end
  subject(:checkout) { Checkout.new products: products }

  it 'Test a £20 discount on basket if price > £150' do
    checkout.scan 'A'
    checkout.scan 'C'
    checkout.scan 'C'
    checkout.scan 'C'

    expect(checkout.total).to eq '£160'
  end
end 