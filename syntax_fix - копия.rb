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


  require "minitest/autorun"
  class TestHometask1 < Minitest::Test
    def setup
      @hometask1 = Hometask1.new
    end

    def test_sum_of_negative
      puts "Original array: #{arr}"
      hometask1.stub(:rand, -1) do
      hometask1 = Hometask1.new
      assert_equal(-1, hometask1.flip)
    end

    def test_sum
      @arr.flatten!.select!{ |n| n < 0 }
      puts "Negative numbers #{arr} Sum: #{arr.inject(:+)}"
      assert_equal(-16, hometask1.flip)
    end
  end
