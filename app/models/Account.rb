class Account
    include Mongoid::Document
    include Mongoid::Timestamps
    include SimpleEnum::Mongoid

    field :name, type: String
    field :amount, type: Float
    field :active, type: Boolean, default: true
    field :currency, type: String

    validates :name, presence: true
    validates :amount, presence: true
    
    has_many :transactions
    
    as_enum :type_transaction, Constants::ACCOUNT_TYPE

    def is_money_account?
        self.type_transaction == Constants::ACCOUNT_TYPE[:money]
    end

    def is_saving_account?
        self.type_transaction == Constants::ACCOUNT_TYPE[:saving]
    end

    def is_investment?
        self.type_transaction == Constants::ACCOUNT_TYPE[:investment]
    end

    def is_bank_checking_account?
        self.type_transaction == Constants::ACCOUNT_TYPE[:bank_checking_account]
    end

    def is_other_type_account?
        self.type_transaction == Constants::ACCOUNT_TYPE[:other]
    end

end