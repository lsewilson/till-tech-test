require 'json'

class Order

  def add(item)
     file = File.read('hipstercoffee.json')
     menu = JSON.parse(file)
     fail "Item not on menu" unless menu[0]["prices"][0][item]
   end

end
