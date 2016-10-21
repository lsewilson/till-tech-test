require 'order'

describe Order do

  subject(:order) { described_class.new }

  describe '#add' do
    it 'throws an error if item is not on menu' do
      msg = "Item not on menu"
      expect { order.add("Macchiato") }.to raise_error msg
    end

    it 'does not throw an error if item is on menu' do
      expect { order.add("Cafe Latte") }.not_to raise_error
    end

    it 'adds an item to a new order' do
      order.add("Cafe Latte")
      expect(order.list).to eq [["Cafe Latte", 4.75]]
    end
  end
end
