require 'bank_account'

describe BankAccount do
  before(:each) do
    @bank_account = BankAccount.new
  end

  it 'has a current balance' do
    expect(@bank_account.current_balance).to eq(0)
  end

  describe '#deposit' do
    it 'allows customer to deposit money into their account' do
      @bank_account.deposit(50)
      expect(@bank_account.current_balance).to eq(50)
    end
  end

  describe '#withdraw' do
    it 'allows customer to withdraw money from their account' do
      @bank_account.deposit(50)
      @bank_account.withdraw(20)
      expect(@bank_account.current_balance).to eq(30)
    end

    it 'raises error if withdraw amount is > balance' do
      @bank_account.current_balance
      expect { @bank_account.withdraw(20) }.to raise_error 'Insufficient Funds'
    end
  end

  describe '#statement' do
    bank_statement = "Date || Credit || Debit || Balance\n09/02/2021 || || 20.00 || 30.00\n09/02/2021 || 50.00 || || 50.00\n"
    it 'shows a statment of the customers transactions' do
      @bank_account.deposit(50)
      @bank_account.withdraw(20)
      expect { @bank_account.statement }.to output(bank_statement).to_stdout
    end
  end
end
