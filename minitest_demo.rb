require "minitest/autorun"

class Person
  attr_reader :name
  def initialize name
    @name = name
  end
end

class DemoTest < MiniTest::Test
  def test_asserts_the_truth
    assert true, "Expected true, not false"
  end

  def test_person_has_a_name
    person = Person.new "Sbstn"
    assert_equal person.name, "Sbstn"
  end


end
