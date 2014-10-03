=begin
Separate each element on the & characters.
Separate key and value on the = character
Partial Example: {first_name: "Ada", last_name: "Lovelace"}
=end


class CreateHash
  def self.string_to_hash
    string = "first_name=Ada&last_name=Lovelace&dob=1815&title=Countess"
    s = string.gsub("=", "&").split("&")

    @@hash = Hash[*s.flatten]
  end

  def self.keys_to_symbols
    @@hash.inject({}){|new_hash,(k,v)| new_hash[k.to_sym] = v; new_hash}
  end
end
