class ExerciseMetric < ApplicationRecord
  belongs_to :user
  has_many :exercises
end
