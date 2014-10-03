class Decode

string = 'Hello%20%22World%22%20%2D%201%20is%20%3E0%2E'

@@string_key = {
  "%20" => " ",
  "%22" => '"',
  "%25" => "%",
  "%2D" => "-",
  "%2E" => ".",
	"%3C" => "<",
  "%3E" => ">",
  "%5C" => "\\",
  "%5F" => "_",
}

# Need to fix
  def self.decode(string)
    string.split("").each do |i|
    String.new() << @@string_key[:"#{i}"]
    end
  end
end
