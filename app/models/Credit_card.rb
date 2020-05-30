class CreditCard
    include Mongoid::Document
    include Mongoid::Timestamps

    field :name, type: String
    field :limit, type: Float
    field :close_day, type: Integer
    field :pay_day, type: Integer

    #vincular cuenta y bandera de la tarjeta
end