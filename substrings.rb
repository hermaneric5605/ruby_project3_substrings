def substrings(words, dictionary)
	found_words = {}
	dictionary.each do | word | 
		matches = words.downcase.scan(word.downcase).length
		if matches > 0
			found_words[word] = matches
		end
	end
	found_words

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)