class NewWord
  include Mongoid::Document
  include Mongoid::Timestamps

  field :depth, type: Integer, default: 0
  field :wrong_times, type: Integer, default: 0

  belongs_to :user
  belongs_to :word
end
