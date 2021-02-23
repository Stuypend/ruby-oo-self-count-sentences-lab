require 'pry'

class String

  def initialize()

  end

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
    idx = 0
    count = 0
    #binding.pry
    while( idx < self.length)

      if(self[idx] == "!" || self[idx] == "." || self[idx] == "?")
        # binding.pry
        count += 1
        while(self[idx] == "!" || self[idx] == "." ||self[idx] == "?")
          idx += 1
          #  binding.pry
        end
      end
      idx += 1
    end
    #binding.pry
    return count
  end

end


puts "one. two. three?".count_sentences