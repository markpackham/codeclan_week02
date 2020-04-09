chickens = ["Margaret", "Hetty", "Henrietta", "Audrey", "Mabel"]

# p "from for loop"

# for chicken in chickens
#   shouting_chicken = chicken.upcase
#   p shouting_chicken
# end

# p "from enumerator"

# #chickens.each { |chicken| p chicken }

# chickens.each do |chicken|
#   shouting_chicken = chicken.upcase
#   p shouting_chicken
# end

# name_lengths = []

# for chicken in chickens
#     name_lengths << chicken.length
# end

# chickens.each do |chicken|
#   name_lengths << chicken.length
# end

# p "name_lengths:"
# p name_lengths

# mapped_lengths = chickens.map do |chicken|
#   chicken.length
# end

# p "mapped_lengths:"
# p mapped_lengths

# chickens.each_with_index do |chicken, index|
#     p "#{chicken} is at position #{index}"
# end

# found_chickens = []
# for chicken in chickens
#   found_chickens << chicken if chicken[0] == "H"
# end

# found_chickens = chickens.find_all do |chicken|
#     chicken[0] == "H"
# end

# p found_chickens

reduced_chickens = chickens.reduce do |list, chicken|
    list + ", " + chicken
end

p chickens
p reduced_chickens

numbers = [1,2,3,4,5,6,7,8]

reduced_number = numbers.reduce do |sum, number|
    sum + number
end
# reduce collapses your entire array into one value
p reduced_number