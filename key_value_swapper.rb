# Make a method that takes a hash as an argument and swaps each key with it's value.


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

def swap(hash)
  v = hash.values
  k = hash.keys
  Hash[*v.zip(k).flatten]
  # * is splat and it takes and array with the four objects and
  # turns them into four distinct argument

end

# iterate over the keys and manually assign keys and values to new hash
def swap(hash)
  new_hash = {}
  hash.keys.each do |k|
    v = hash[k]
    new_hash[v] = k
  end
  new_hash
end

    #new_hash = {}
    #@a.keys.each {|new_hash,(k,v)| new_hash[k.to_sym] = v; new_hash}


    # keys = @a.keys
    # keys.each do |key|
    # new_hash << key = a.values


# => {"Wabi" => :name, "Cat" => :species}
