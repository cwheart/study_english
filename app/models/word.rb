class Word
  include Mongoid::Document
  include Mongoid::Timestamps
  
  has_and_belongs_to_many :courses

  field :name, type: String
  field :pronounce, type: String
  field :content, type: String
end
