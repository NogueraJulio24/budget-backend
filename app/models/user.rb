class User
    include Mongoid::Document
    include Mongoid::Timestamps
    include SimpleEnum::Mongoid

    field :name, type: String
    field :lastname, type: String
    field :email, type: String
    field :date_of_birthday, type: String

    as_enum :gender, Constants::GENDER
    as_enum :type_account, Constants::USER_ACCOUNT_TYPE, field: { :type => Integer, :default => 0 }

    validates :name, presence: true
    validates :lastname, presence: true
    validates :email, presence: true
end