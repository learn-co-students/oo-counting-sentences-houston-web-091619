require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    #split(/\w[?!.]/)
    self.split(/\.|\!|\?/).delete_if {|s| s.size < 2}.size
  end
end