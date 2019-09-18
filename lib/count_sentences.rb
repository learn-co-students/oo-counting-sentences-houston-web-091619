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
    a = self.split(" ") #array
    b = a.select do |num| #iterating
      num.include?("!") ? true : num.include?("?") ? true : num.include?(".") ? true : false
    end
    b.length
  end
end
