def combinations(first_group, second_group)
  third_group = []
  first_group.each do |first_item|
    second_group.each do |second_item|
      third_group << first_item + second_item
    end
  end
  third_group
end