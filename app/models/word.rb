class Word
  include Mongoid::Document

  field :name, type: String
  field :pronounce, type: String
  field :content, type: String
end
