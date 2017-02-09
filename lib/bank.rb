class Bank
  attr_reader :name
  def initialize(name = "")
    @name = name
  end

  def open_account(person)
    person.add_bank(name)
  end
end
