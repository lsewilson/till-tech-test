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

  describe '#print_receipt' do

    let(:receipt) { double :receipt, render: "string" }

    before do
      2.times {order.add("Cafe Latte")}
      order.add("Blueberry Muffin")
      order.add("Choc Mudcake")
    end

    it 'creates a new receipt' do
      order.print_receipt(receipt)
      expect(receipt).to have_received(:render).with(order.list)
    end
  end
end
