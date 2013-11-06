class QuizAnswer
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :quiz
end
