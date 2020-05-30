class SubCategory
    include Mongoid::Document
    include Mongoid::Timestamps

    field :name, type: String

    belongs_to :category
    
    validates :name, presence: true

end