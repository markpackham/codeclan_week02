pets = [
  {
    name: "Sir Percy",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500,
  },
  {
    name: "King Bagdemagus",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500,
  },
  {
    name: "Sir Lancelot",
    pet_type: :dog,
    breed: "Pomsky",
    price: 1000,
  },
  {
    name: "Arthur",
    pet_type: :dog,
    breed: "Husky",
    price: 900,
  },
  {
    name: "Tristan",
    pet_type: :dog,
    breed: "Basset Hound",
    price: 800,
  },
  {
    name: "Merlin",
    pet_type: :cat,
    breed: "Egyptian Mau",
    price: 1500,
  },
]
# Print out all of the names using a loop
# Print out all of the names using an enumerable
# Find a pet using a loop and if statement
# Find a pet using an enumerable

p " -----For Loop-----"

for pet in pets
  p pet[:name]
end

p " -----Enum -----"

pets.each { |pet| p pet[:name] }

p " -----For Loop If-----"

for pet in pets
  if (pet[:name] == "Arthur")
    p "Hello " + pet[:name]
  end
end

p " -----Enum Find-----"

found_pet = pets.find do |pet|
  pet[:name] == "Arthur"
end

p "Hello " + found_pet[:name]

p pets.find { |pet| pet[:name] == "Arthur" }[:name]
