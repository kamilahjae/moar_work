# Make a method that takes a hash as an argument and swaps each key with it's value.
# => {"Wabi" => :name, "Cat" => :species}

a = {name: "Wabi", species: "Cat"}
    # [[],[]] iterating with a hash gives you an array of arrays


def self.swap(hash)
  new_hash = {}
  hash.each do |k, v| #k stands for name: v stands for "Wabi"
    new_hash[v] = k
  end
  new_hash
end

puts swap(a).inspect


## Other ways to solve the problem
# 1:
def swap(hash)
  v = hash.values
  k = hash.keys
  Hash[*v.zip(k).flatten]
  # * is splat and it takes and array with the four objects and
  # turns them into four distinct argument

end

# 2:
# iterate over the keys and manually assign keys and values to new hash
def swap(hash)
  new_hash = {}
  hash.keys.each do |k|
    v = hash[k]
    new_hash[v] = k
  end
  new_hash
end

# => {"Wabi" => :name, "Cat" => :species}
