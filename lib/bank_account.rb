class BankAccount
  attr_reader :current_balance

  def initialize
    @current_balance = 0
  end

  def deposit(amount)
    update_balance(amount)
  end

  def withdraw(amount)
    update_balance(-amount)

    raise 'Insufficient Funds' if (@current_balance - amount < 0)
  end

  private

  def update_balance(amount)
    @current_balance += amount
  end

end