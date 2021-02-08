class BankAccount
  attr_reader :current_balance

  def initialize
    @current_balance = 0
  end

  def deposit(amount)
    update_balance(amount)
    puts header
    puts "#{current_time} || #{amount} || || #{current_balance}"
  end

  def withdraw(amount)
    update_balance(-amount)
    print header
    print "#{current_time} || || #{amount}  || #{current_balance}"

    raise 'Insufficient Funds' if (@current_balance - amount < 0)
  end

  private

  def update_balance(amount)
    @current_balance += amount
  end

  def current_time
    Time.now.strftime("%d/%m/%Y")
  end
  
  def header
    'Date || Credit || Debit || Balance'
  end

end