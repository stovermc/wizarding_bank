require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'
require './lib/person'
require 'pry'

class BankTest < Minitest::Test
  attr_reader :bank
  def setup
    @bank = Bank.new
  end

  def test_bank_exists
    assert_instance_of Bank, bank
  end

  def test_bank_has_a_name
    bank = Bank.new("JP Morgan Chase")
    assert_equal "JP Morgan Chase", bank.name
  end

  def test_bank_can_add_account
    person_1 = Person.new("Neville", 100)
    bank = Bank.new("JP Morgan Chase")
    bank.open_account(person_1)
    assert_equal ["JP Morgan Chase"], person_1.banks
  end

  def test_can_accept_deposit
    person_1 = Person.new("Neville", 100)
    bank = Bank.new("JP Morgan Chase")
    bank.open_account(person_1)
    bank.deposit(person_1, 50)
    assert_equal
  end

end
