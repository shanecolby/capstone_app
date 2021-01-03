class Exercise < ApplicationRecord
  has_many :workouts
  has_many :selected_exercises
end
