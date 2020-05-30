class Category
    include Mongoid::Document
    include Mongoid::Timestamps
    include SimpleEnum::Mongoid

    field :name, type: String
    field :color, type: String
    field :icon, type: String

    field :active, type: Boolean, default: true

    as_enum :type_transaction, Constants::CATEGORY_TYPE

    
    def is_expense?
        self.type_transaction == Constants::CATEGORY_TYPE[:expense]
    end

    def is_income?
        self.type_transaction == Constants.CATEGORY_TYPE[:income]
    end


end