class UserCourse
  include Mongoid::Document
  include Mongoid::Timestamps

  field :finish_word_ids, type: Array, default: []

  embeds_many :finish_words, class_name: "Word"
  embeds_many :words

  belongs_to :user
  belongs_to :course
end
