class Workout < ApplicationRecord
  belongs_to :user
  has_many :selected_exercises
end
