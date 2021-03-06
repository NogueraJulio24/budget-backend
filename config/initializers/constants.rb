module Constants

    TRANSACTION_TYPE = {
        expense: 0,
        income: 1,
        credit_card: 2,
        transfert: 3
    }

    CATEGORY_TYPE = {
        expense: 0,
        income: 1
    }

    ACCOUNT_TYPE = {
        money: 0,
        saving: 1,
        investments: 2,
        bank_checking_account: 3,
        other: 4
    }

    USER_ACCOUNT_TYPE = {
        free: 0,
        monthly: 1,
        annual: 2,
        try_period: 3,
        admin: 4
    }

    GENDER = {
        male: 0,
        fame: 1
    }
end