require 'receipt'

describe Receipt do

  subject(:receipt) { described_class.new }

  describe "#render" do
    it 'returns a new hash based on the array it is passed' do
      list = [["Cafe Latte", 4.75], ["Cafe Latte", 4.75],
      ["Blueberry Muffin", 4.05], ["Choc Mudcake", 6.40]]
      combined_list = {["Cafe Latte", 4.75] => 2,["Blueberry Muffin", 4.05] => 1, ["Choc Mudcake", 6.40] => 1}
      expect(receipt.render(list)).to eq combined_list
    end

  end

end
