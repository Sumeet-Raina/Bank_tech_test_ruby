require "bank_account"
describe BankAccount do 

  let (:transactions) { double :transactions }

  it "Bank account has balance" do
    expect(subject).to respond_to :balance
  end
  
  it "has zero balance" do
    expect(subject.balance).to eq(0)
  end

  it "can be credited" do
    subject.credit(20)
    expect(subject.balance).to eq(20)
  end
  
  it "can be debited" do
    subject.credit(20) # add balance
    subject.debit(20)  # subtract balance
    expect(subject.balance).to eq(0) #balance = 0
  end

  it 'returns the statement as a table' do
    result = "Date || Credit || Debit || Balance\n#{Time.now.strftime('%d/%m/%Y')} || 1000.00 ||  || 1000.00\n#{Time.now.strftime('%d/%m/%Y')} ||  || 500.00 || 500.00\n"
    subject.credit(1000)
    subject.debit(500)
    expect { subject.print_statement }.to output(result).to_stdout
  end

end 