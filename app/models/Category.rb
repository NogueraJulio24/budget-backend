class Category
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :color, type: String
  field :icon, type: String
  field :active, type: Mongoid::Boolean
end
