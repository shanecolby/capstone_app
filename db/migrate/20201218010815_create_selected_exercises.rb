class CreateSelectedExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :selected_exercises do |t|
      t.integer :exercise_id
      t.integer :user_id
      t.string :status
      t.integer :workout_id

      t.timestamps
    end
  end
end
