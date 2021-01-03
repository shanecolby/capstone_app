class SelectedExercise < ApplicationRecord
  belongs_to :workout
  belongs_to :user
  belongs_to :exercise
  
end
