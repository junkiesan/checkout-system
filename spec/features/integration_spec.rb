require_relative '../../lib/checkout'

describe 'Integration Specs' do
  let(:products) do
    {
      A => Item.new('A', 30),
      B => Item.new('B', 20),
      C => Item.new('C', 50),
      D => Item.new('D', 15)
    }
  end
  subject(:checkout) { Checkout.new products: products }

  it 'Test a £20 discount on basket if price > £150' do
    checkout.scan A
    checkout.scan C
    checkout.scan C
    checkout.scan C

    expect(checkout.total).to eq '£160'
  end
end 