class Word
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :pronounce, type: String
  field :content, type: String
end
