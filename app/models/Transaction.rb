class Transaction
    include Mongoid::Document
    include Mongoid::Timestamps
    include SimpleEnum::Mongoid

    field :amount, type: Float
    field :observation, type: String
    field :date, type: DateTime
    field :description, type: String

    as_enum :type_transaction, Constants::TRANSACTION_TYPE, field: {type: Integer }
end
