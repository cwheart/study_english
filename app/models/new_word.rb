class NewWord
  include Mongoid::Document
  include Mongoid::Timestamps

  attr_accessor :word_name

  field :depth, type: Integer, default: 0
  field :wrong_times, type: Integer, default: 0

  belongs_to :user
  belongs_to :word

  validates_presence_of :user
  validates_presence_of :word

  validates :word_id, uniqueness: { scope: :user_id, message: "生词已经存在" }

  def load_word_by_name
    self.word = Word.find_by(name: word_name) rescue nil
    errors.add(:word_name, "单词不存在") unless self.word
    self.word.present?
  end
end
