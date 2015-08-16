class Account
  attr_reader :balance

  def initialize(initial_balance)
    @balance = initial_balance
  end

  def withdraw(amount)
    @balance -= amount
  end

  def deposit(amount)
    @balance += amount
  end
end
