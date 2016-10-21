require 'receipt'

describe Receipt do

  subject(:receipt) { described_class.new }

  describe "#render" do
    it 'returns a new array based on the array it is passed' do
      list = [["Cafe Latte", 4.75], ["Cafe Latte", 4.75],
      ["Blueberry Muffin", 4.05], ["Choc Mudcake", 6.40]]
      combined_list = [["Cafe Latte", 2, 9.50],["Blueberry Muffin", 1, 4.05], ["Choc Mudcake", 1, 6.40]]
      expect(receipt.render(list)).to eq combined_list
    end
  end


end
