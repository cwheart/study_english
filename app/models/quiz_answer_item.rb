class QuizAnswerItem
  include Mongoid::Document
  include Mongoid::Timestamps

  field :correct, type: Boolean

  belongs_to :quiz_answer, inverse_of: :quiz_answer_item
end
