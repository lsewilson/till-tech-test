class Receipt

  def render(list)
    combine_items(list)
  end

  private

  def combine_items(list)
    hash = Hash.new(0)
    list.each do |item|
      hash[item] += 1
    end
    return hash
  end

end
