class Quiz
  include Mongoid::Document
  include Mongoid::Timestamps

  # relations
  belongs_to :user
  belongs_to :course
  belongs_to :user_course
  has_one :quiz_answer
  embeds_many :words

  # callbacks
  before_create :set_words
  after_create :set_quiz_answer

  private
  def set_words
    course.words = self.course.words.where(:id.nin => self.user_course.finish_word_ids).page(1)
  end

  def set_quiz_answer
    self.quiz_answer = QuizAnswer.new
  end
end
