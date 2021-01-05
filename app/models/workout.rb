class Workout < ApplicationRecord
  belongs_to :user
  has_many :selected_exercises
  has_many :exercises, through: :selected_exercises
end
