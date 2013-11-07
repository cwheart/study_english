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

  private
  def set_words
    self.words = self.course.words.where(:id.nin => self.user_course.finish_word_ids).page(1)
  end

end
