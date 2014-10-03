pets = [
  {
    type: ["Cat", "Siamese"],
    name: "Lola",
    age: 4,
    personality: "aloof",
    color: ["brown", "beige"]
  },

  {
    type: ["Guinea Pig", "Domestic Shorthair"],
    name: "Moxie",
    age: 2,
    personality: "skittish",
    color: "black"
  },

  {
    type: ["Bunny", "Netherland Dwarf"],
    name: "Snowflake",
    age: 7,
    personality: "aggressive",
    color: "white"
  },

  {
    type: ["Dog", "Rottwieller"],
    name: "Benny",
    age: 3,
    personality: "affectionate",
    color: ["black", "brown"]
  }
]

class Pets
  attr_accessor :type, :name, :age, :personality, :color

  def initialize(a_pet)
    @type = a_pet[:type]
    @name = a_pet[:name]
    @age = a_pet[:age]
    @personality = a_pet[:personality]
    @color = a_pet[:color]
  end
end

pet_objects = []
  pets.each do |a_pet|
    pet = Pets.new(a_pet)
    pet_objects.push(pet)
    puts pet
    puts pet.name
  end


puts pet_objects


a = pets[0]
puts a
