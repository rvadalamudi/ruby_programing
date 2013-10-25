class Account
	attr_reader :balance
	def initialize(balance)
		@balance = balance
	end
end

class Transaction
    attr_reader :sav_acc, :chk_acc
	def initialize(sav_acc, chk_acc)
		@sav_acc = sav_acc
		@chk_acc = chk_acc
	end

private 
  
     def debit(account,money)
     	account.balance -= money
     end

     def credit(account,money)
     	account.balance += money
     end
public
     def trasfer(account1, account2, money)
     	debit(account1,money)
     	credit(account2, money)
     end
 end

 saving = Account.new(100)
 checking = Account.new(200)


trans = Transaction.new(saving,checking)
trans.trasfer(saving,checking,50)

puts "#{saving.balance}"
puts "#{checking.balance}"



    