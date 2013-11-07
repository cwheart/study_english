class QuizAnswerItem
  include Mongoid::Document
  include Mongoid::Timestamps

  attr_accessor :name_tmp

  field :correct, type: Boolean
  field :word_id
  field :name, type: String
  field :pronounce, type: String
  field :content, type: String

  belongs_to :quiz_answer, inverse_of: :quiz_answer_item
end
