class Task2
def initialize (my_hash)
@my_hash = {"yes"=>23, "b"=>"travel", "yesterday"=>34, 5=>"234", :yesss=>:fg, try: 30, key: "some value", "yesterday"=>34, "yesteryear"=>2014}.keys
end

def size
@my_hash.find_all{|key| key =~ /^yes/}.size
end
end


require "minitest/autorun"
class TestTask2 < Minitest::Test
  def setup
    @hometask1 = Hometask1.new
  end

  def test_my_hash
    @my_hash = {"yes"=>23, "b"=>"travel", "yesterday"=>34, 5=>"234", :yesss=>:fg, try: 30, key: "some value", "yesterday"=>34, "yesteryear"=>2014}.keys
    assert_equal("eye", task2.flip)
  end

def size
@my_hash.find_all{|key| key =~ /^yes/}.size
end
end
