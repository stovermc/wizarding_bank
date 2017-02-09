class Person
  attr_reader :name, :cash
  attr_accessor :banks
  def initialize(name = "", cash = 0)
    @name = name
    @cash = cash
    @banks = {}
  end

  def add_bank(bank_name)
    banks[:bank_name] = 0
  end
end
