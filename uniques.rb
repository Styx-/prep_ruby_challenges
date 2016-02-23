def uniques(items)
  items_to_delete = []
  items.each_with_index do |item, index|
    (items_to_delete << item) if items[(index + 1)..(items.length)].include?(item)
  end
  items_to_delete.each do |item|
    items.delete_at(items.index(item))
  end
  items
end