class WordDir
  attr_accessor :sorted_word_dir
  
  def initialize
    @file = './dictionary.txt' 
    @sorted_word_dir = Hash.new()
    prepare_dir
  end

  #Prepare the directory of words key with words and value with array of combinations
  def prepare_dir
     File.read(@file).each_line do |word|
       dict_word = word.strip!
       sorted_word = dict_word.split("").sort().join("")

       if !sorted_word_dir.has_key?(sorted_word)
         sorted_word_dir[sorted_word] = []
       end
       sorted_word_dir[sorted_word] << dict_word
     end
  end

  #Search a word from key value pair of directory
  def search_words(key)
    key.strip!()
    key = key.split("").sort().join("")
    words_found = sorted_word_dir[key] || ["no words found"]
    words_found.join(" ")
  end  

end

