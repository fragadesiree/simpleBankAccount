class BankAccount
    def initialize owner, initial_value
        @owner = owner
        @value = initial_value
    end

    def transfer(another_bank_account, value)
        if bank_balance > value
            debit(value)
            another_bank_account.deposit(value)
        else
            raise "Insufficient balance to make transactions"
        end
    end

    def owner
        @owner
    end

    def bank_balance
        @value
    end

    protected

    def debit(value_to_debit)
        @value -= value_to_debit
    end

    def deposit(value_to_deposit)
        @value += value_to_deposit
    end
end