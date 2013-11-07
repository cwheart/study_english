class QuizAnswer
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :quiz
  has_many :quiz_answer_items, inverse_of: :quiz_answer do
    def build_items(count=20)
      count.times do
        build
      end if @target.blank?
    end
  end

  accepts_nested_attributes_for :quiz_answer_items
end
