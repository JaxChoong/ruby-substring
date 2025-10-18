def substrings(string,dictionary)
  # split words into array, the gsub replaces punctuation with space
  words = string.gsub(/[^a-zA-Z\s]/,' ').split(" ")

  p words
end
