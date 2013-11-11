require 'test_helper'

class WordDirTest <  MiniTest::Unit::TestCase
  
  def setup
    @word_dir = WordDir.new  
  end  

  def test_search_single_word
    assert_equal "aa", @word_dir.search_words('aa')
  end
  
  def test_search_multiple_words
    assert_equal "aah aha", @word_dir.search_words('aha')
    assert_equal "aah aha", @word_dir.search_words('aah')
    assert_equal "aah aha", @word_dir.search_words('haa')
  end

  def test_search_no_word
    assert_equal "no words found", @word_dir.search_words('a')
  end

end  
