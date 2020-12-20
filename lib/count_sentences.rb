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
    count = 0
    number = 0
    string_to_array = self.split("")
    string_to_array.each do |letter|
      if (string_to_array[number - 1] != letter) && (letter == "." || letter == "?" || letter == "!")
        count += 1
      end
            
      number += 1
    end
          
    count
  end

end