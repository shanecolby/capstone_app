class CreateExerciseMetrics < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_metrics do |t|
      t.integer :exercise_id
      t.integer :user_id
      t.string :exercise_name
      t.integer :weight_used
      t.integer :reps
      t.integer :sets
      t.integer :workout_id

      t.timestamps
    end
  end
end
