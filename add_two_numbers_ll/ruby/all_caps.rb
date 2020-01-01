require './quote'
module AllCap
  refine Quote do
    def display
      puts "ALL CAPS"
    end
  end
end

module AllCap2
  refine Quote do
    def display 
      puts "omg"
    end
    def hello
      puts "Hello"
    end
  end
end


puts "oy"
Quote.new.display
using AllCap
Quote.new.display
using AllCap2
Quote.new.display
Quote.new.hello
