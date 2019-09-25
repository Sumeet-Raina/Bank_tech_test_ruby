#Bank tech test

👩🏻‍✈️ Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012<br>
And a deposit of 2000 on 13-01-2012<br>
And a withdrawal of 500 on 14-01-2012<br>
When she prints her bank statement<br>
Then she would see<br>

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

🧐 To run tests<br>
In the project directory, run bundle install<br>
Run rspec - should also display test coverage<br>
To run linting: run rubocop<br>
<br>

👯‍♀️ Functionality<br>
REPL app but no need for a command line interface<br>
bank takes deposits<br>
bank withdraws money<br>
bank prints account statements with date, amount, balance on it<br>
no need for a database but should keep data in memory<br>
