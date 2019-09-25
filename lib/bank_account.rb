class BankAccount

  attr_accessor :balance 
  attr_reader   :date

  def initialize
    @balance = 0
    @date = Time.now.strftime("%d/%m/%Y")
  end

  def credit(amount)
    @balance += amount 
  end

  def debit(amount)
    @balance -= amount
  end
  

end