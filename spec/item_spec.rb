require_relative '../lib/item'

describe Item do
  subject(:item) { described_class.new('A', 30) }

  describe '#name' do
    it 'is expected to return item name' do
      expect(item.name).to eq "A"
    end
  end

  describe '#price' do
    it 'is expected to return item price' do
      expect(item.price).to eq 30
    end
  end
end