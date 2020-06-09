class Transaction
    include Mongoid::Document
    include Mongoid::Timestamps
    include SimpleEnum::Mongoid

    field :amount, type: Float
    field :observation, type: String
    field :date, type: DateTime
    field :description, type: String

    field :type_transaction, type: Integer
end
