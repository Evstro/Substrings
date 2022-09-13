# methods
def substrings(string, dictionary)

  matching_substrings = Array.new
  string_into_array = string.split

  string_into_array.each do |substring|
    dictionary.each do |string|
      if substring.downcase.include?(string.downcase) == true
        matching_substrings.push(string)
      end      
    end
  end

  matching_substrings_hash = matching_substrings.reduce(Hash.new(0)) do |string, times|
    string[times] += 1
    string
  end

 
end

# variables
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# program
substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)

substrings("it it it it it", dictionary)