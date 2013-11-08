class QuizAnswer
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :quiz
  has_many :quiz_answer_items, inverse_of: :quiz_answer do
    def build_items(count=20)
      @base.quiz.words.each do |word|
        build(content: word.content, word_id: word.id, name_tmp: word.name)
      end if @target.blank?
    end
  end

  accepts_nested_attributes_for :quiz_answer_items

  after_create :finish_words

  private
  def finish_words
    self.quiz.user_course.push(finish_word_ids: self.quiz_answer_items.map(&:word_id))
  end
end
