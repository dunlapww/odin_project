

def substring(phrase, dictionary)
  phrase_words = phrase.downcase.split
  used_words = Hash.new(0)

  phrase_words.each do |phrase_word|
    dictionary.each do |ref_word|
      used_words[ref_word] += 1 if phrase_word.include?(ref_word)
    end
  end
  print used_words
end


phrase = "Below the partner I sit.  How are the low going?!"
dictionary = ["below","down","go","going","horn","how","the","howdy","it","i","a","low","own","part","partner","sit"]
substring(phrase, dictionary)
