Dir['./lib/**/*.rb'].each{|file| require file }
puts "--------------------------------------"

#instintate the directory of words
word_dir = WordDir.new
while jumbled_word = STDIN.gets
  puts word_dir.search_words(jumbled_word)
end



