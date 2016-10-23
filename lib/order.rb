require 'json'
require_relative './receipt'

class Order

  attr_reader :list

  def initialize
    @list = []
  end

  def add(item)
     file = File.read('hipstercoffee.json')
     menu = JSON.parse(file)
     fail "Item not on menu" unless menu[0]["prices"][0][item]
     price = menu[0]["prices"][0][item]
     @list << [item, price]
   end

   def print_receipt(receipt = Receipt.new)
     print receipt.render(@list)
   end

end
