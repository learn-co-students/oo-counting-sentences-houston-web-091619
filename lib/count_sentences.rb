require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    if self.include?('.')
      sentence = self.split('. ')
      count = sentence.map do |elem|
        elem.split('! ')
      end
      count.flatten!
      count = count.map do |elem|
        elem.split('? ')
      end
      count.flatten!.size
    else
      return 0
    end
  end
end

p "This, well, is a sentence. This is too!! And so is this, I think? Woo...".split(/\.|\?|\!/)