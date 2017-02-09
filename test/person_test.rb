require 'minitest/autorun'
require 'minitest/pride'
require './lib/person.rb'

class PersonTest < Minitest::Test
  attr_reader :person
  def setup
    @person = Person.new
  end

  def test_person_exists
    assert_instance_of Person, person
  end

  def test_person_has_a_name
    person = Person.new("Ron")
    assert_equal "Ron", person.name
  end

  def test_person_has_cash_flow_yo
    person = Person.new("Ron", 100)
    assert_equal 100, person.cash
  end

  def test_person_has_bank_accoutnts
    person = Person.new("Ron", 100)
    person.add_bank("JP Morgan Chase")
    assert_equal "JP Morgan Chase", person.banks
  end

  def test_person_has_bank_accoutnts_with_balances
    skip
    person = Person.new("Ron", 100)
    assert_equal 100, person.banks[:balance]
  end
end
