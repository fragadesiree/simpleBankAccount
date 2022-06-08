class BankAccountWithTax < BankAccount
    TAX_VALUE = 2
    def transfer(another_bank_account, value)
        super
        debit(TAX_VALUE)
    end
end