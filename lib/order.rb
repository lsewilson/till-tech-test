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
     receipt_array = receipt.render(@list)
     receipt_array.each do |line|
       print "#{line[0]} #{line[1]} x #{line[2]}\n"
     end
   end

end
