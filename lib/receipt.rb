# Understands how turn order into a receipt

class Receipt

  def render(list)
    string = ""
    qty_list = combine_items(list)
    calculate_subtotals(qty_list).each do |line|
      string << "#{line[0]} #{line[1]} #{line[2]}\n"
    end
    return string
  end

  private

  def combine_items(list)
    hash = Hash.new(0)
    list.each do |item|
      hash[item] += 1
    end
    return hash
  end

  def calculate_subtotals(hash)
    hash.map do |k,v|
      k.insert(1,v)
      k[2] = "%.2f" % (k[2]*v)
    end
    hash.keys
  end

end
