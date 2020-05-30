class Transaction
    include Mongoid::Document
    include Mongoid::Timestamps
    include SimpleEnum::Mongoid
    
    field :amount, type: Float
    field :observation, type: String
    
    field :date, type: DateTime
    field :description, type: String

    belongs_to :account

    as_enum :type_transaction, Constants::TRANSACTION_TYPE

    #Account

    #Category

end