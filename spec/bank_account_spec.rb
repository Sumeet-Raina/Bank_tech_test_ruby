require "bank_account"
describe BankAccount do 
  it "Bank account has balance" do
    expect(subject).to respond_to :balance
  end
end 