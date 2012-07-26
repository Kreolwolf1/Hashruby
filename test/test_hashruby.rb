require 'test/unit'
require 'hashruby'

class MyArrTest < Test::Unit::TestCase
  def test_set_and_get
    test = HashRuby.new
    test.set("test","value")

    assert_equal "value", test.get("test")
  end

  def test_update
    test = HashRuby.new
    test.set("test","value")
    test.set("test","value2")

    assert_equal "value2", test.get("test") 
  end

  def test_remove
    test = HashRuby.new
    test.set("test","value")
    test.remove("test")

    assert_equal false, test.get("test") 
  end
end
