require 'account'

class VirtualAccountProxy
  def initialize(initial_balance)
    @balance = initial_balance
  end

  def withdraw(amount)
    subject.withdraw(amount)
  end

  def deposit(amount)
    subject.deposit(amount)
  end

  def balance
    subject.balance
  end

  def subject
    @subject || (@subject = Account.new(@balance))
  end
end
