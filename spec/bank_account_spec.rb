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
  end
    
end