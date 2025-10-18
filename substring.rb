def substrings(string,dictionary)
  # split words into array, the gsub replaces punctuation with space
  words = string.gsub(/[^a-zA-Z\s]/,' ').downcase.split(" ")
  found_words = Hash.new(0)
  words.each do |word|
    dictionary.each do |entry|
      word.include?(entry) ? (found_words[entry] += 1) : nil
    end
  end
  p found_words
end

substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])