class Api::SelectedExercisesController < ApplicationController
  before_action: :authenticate_user
  
  def index
    if current_user
      @selected_exercises = current_user.selected_exercises.where(status: "added")
      render "index.json.jb"
    else
      render json: "Please sing into your account"
  end


  def create
    @selected_exercise = SelectedExercise.create(
      exercise_id: ,
      user_id: ,
      status: ,
      workout_id: 
    )

    render "show.json.jb"
  end
end
