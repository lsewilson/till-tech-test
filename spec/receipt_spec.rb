require 'receipt'

describe Receipt do

  subject(:receipt) { described_class.new }

  describe "#render" do
    it 'returns a new string based on the array it is passed' do
      list = [["Cafe Latte", 4.75], ["Cafe Latte", 4.75],
      ["Blueberry Muffin", 4.05], ["Choc Mudcake", 6.40]]
      receipt_text = "Cafe Latte 2 9.50\nBlueberry Muffin 1 4.05\nChoc Mudcake 1 6.40\n"
      expect(receipt.render(list)).to eq receipt_text
    end
  end


end
