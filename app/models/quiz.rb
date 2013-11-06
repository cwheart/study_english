class Quiz
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user
  embeds_many :quiz_answers
end
