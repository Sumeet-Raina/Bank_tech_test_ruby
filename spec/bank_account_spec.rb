require "bank_account"
describe BankAccount do 
  it "Bank account has balance" do
    expect(subject).to respond_to :balance
  end
  
  it "has zero balance" do
    expect(subject.balance).to eq(0)
  end

  it "can be credited" do
    expect(subject.credit(20)).to eq(subject.balance)
  end
end 