class BankAccount
  attr_reader :current_balance

  def initialize
    @current_balance = 0
  end

  def deposit(amount)
    @current_balance += amount
  end

  def withdraw(amount)
    @current_balance -= amount

    raise 'Insufficient Funds' if (@current_balance - amount < 0)
  end

end