class Hometask1
def initialize(array_task)
  h = w = 4
  @arr = Array.new(h){ Array.new(w){ rand(-10..10) } }
  puts "Original array: #{arr}"
  end
  def sum
  @arr.flatten!.select!{ |n| n < 0 }
  puts "Negative numbers #{arr} Sum: #{arr.inject(:+)}"
  end
  end
