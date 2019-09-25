require "bank_account"
describe BankAccount do 
  it "Bank account has balance" do
    expect(subject).to respond_to :balance
  end
  
  it "has zero balance" do
    expect(subject.balance).to eq(0)
  end
end 