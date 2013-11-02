class Course
  include Mongoid::Document

  field :name, type: String
  field :kee, type: String

  validates :name, :kee, uniqueness: true, presence: true

  has_and_belongs_to_many :words
end