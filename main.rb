require "./classes/bank_account"
require "./classes/bank_account_with_tax"

TAX_ACCOUNT = 100
TAX_SECOND_ACCOUNT = 200

account = BankAccountWithTax.new("Maria", TAX_ACCOUNT)
second_account = BankAccountWithTax.new("João", TAX_SECOND_ACCOUNT)

begin
    p "Hi #{account.owner}! You have #{account.bank_balance} in your account."
    p "Hi #{second_account.owner}! You have #{second_account.bank_balance} in your account."
    p "#{account.owner} enter with value to transfer to #{second_account.owner}: "

    value = gets.chomp.to_i

    account.transfer(second_account, value)

    p "#{account.owner} now you have #{account.bank_balance} in your account."
    p "#{second_account.owner} now you have #{second_account.bank_balance} in your account."
rescue StandardError => exception
    p "Error when trying to transfer: #{exception.message}"
end