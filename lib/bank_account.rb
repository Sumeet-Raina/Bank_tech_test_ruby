class BankAccount

  attr_accessor :balance 
  
  def initialize
    @balance = 0
    @transactions = []
    @credit = nil
    @debit = nil
  end

  def credit(amount)
    @credit = amount.to_f
    @date = Time.now.strftime("%d/%m/%Y")
    @balance += @credit 
    add_transaction
    @credit = nil
  end

  def debit(amount)
    @debit = amount.to_f
    @date = Time.now.strftime("%d/%m/%Y")
    @balance -= @debit
    add_transaction
    @debit = nil
  end
  
  def add_transaction
    if @credit == nil 
    @transactions.push([@date, @credit,'%.2f' %  @debit, '%.2f' % @balance])
    else 
    @transactions.push([@date, '%.2f' % @credit, @debit, '%.2f' % @balance])
    end
  end

  def print_statement
    puts "Date || Credit || Debit || Balance"
    @transactions.each do |transaction|
    puts"#{transaction[0]}"" || " "#{transaction[1]}"+" || "+"#{transaction[2]}"+" || "+"#{transaction[3]}"
    end
  end

  "%.2f"

end