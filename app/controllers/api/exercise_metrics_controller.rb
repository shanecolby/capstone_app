class Api::ExerciseMetricsController < ApplicationController
  def update
    @exercise = Exercise.find_by(id: params[:id])

    @exercise.exercise_id = params[:exercise_id] || @exercise.exercise_id
    @exercise.user_id = params[:user_id] || @exercise.user_id
    @exercise.excercise_name = params[:exercise_name] || @exercise.exercise_name
    @exercise.weight_used = params[:weight_used]
    @exercise.reps = params[:reps]
    @exercise.sets = params[:sets]
    @exercise.workout_id = params[:workout_id]
  
    @exercise.save

    render "show.json.jb"
  end
end
