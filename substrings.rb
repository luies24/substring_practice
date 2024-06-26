def substrings(word, dictionary)
    results = Hash.new(0)
    word = word.downcase
    
    dictionary.each do |substring|
        substring = substring.downcase
        matches = word.scan(substring)
        results[substring] += matches.length if matches.length > 0
    end
    results
end