# Bank tech test

This is a Bank Tech Test that will allow a customer to deposit, withdraw and check the balance of a bank account.

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
### How To Run

In terminal type in the following commands:

```
git clone (current repo)
cd bank-tech-test
run 'bundle install'
irb -r './lib/bank_account.rb'
crate a new account with 'bank = BankAccount.new'
to depoit money use 'bank.deposit(100)
to withdraw money use 'bank.withdraw(50)
to view statement use 'bank.statement'
```
