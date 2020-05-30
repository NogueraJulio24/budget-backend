class Account
    include Mongoid::Document
    include Mongoid::Timestamps
    include SimpleEnum::Mongoid

    field :name, type: String
    field :amount, type: Float
    field :active, type: Boolean, default: true
    
    as_enum :type_transaction, Constants::ACCOUNT_TYPE
    
    # Una cuenta tiene vaias transacciones
end