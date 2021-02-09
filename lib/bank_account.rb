class BankAccount
  attr_reader :current_balance, :transactions

  def initialize
    @current_balance = 0.00
    @transactions = []
  end

  def deposit(amount)
    update_balance(amount)
    @transactions << "#{current_time} || #{'%.2f' % (amount)} || || #{'%.2f' % (current_balance)}"
  end

  def withdraw(amount)
    raise 'Insufficient Funds' if @current_balance - amount <= 0

    update_balance(-amount)
    @transactions << "#{current_time} || || #{'%.2f' % (amount)} || #{'%.2f' % (current_balance)}"
  end

  def statement
    @transactions << header
    puts transactions.reverse
  end

  private

  def update_balance(amount)
    @current_balance += amount
  end

  def current_time
    Time.now.strftime('%d/%m/%Y')
  end

  def header
    'Date || Credit || Debit || Balance'
  end
end
