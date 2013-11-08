class UserCourse
  include Mongoid::Document
  include Mongoid::Timestamps

  has_and_belongs_to_many :finish_words, class_name: "Word", inverse_of: nil

  belongs_to :user
  belongs_to :course
end
