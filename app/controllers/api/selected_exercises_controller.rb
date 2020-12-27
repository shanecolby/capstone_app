class Api::SelectedExercisesController < ApplicationController
  # before_action: :authenticate_user

  def index
    if current_user
      @selected_exercises = current_user.selected_exercises.where(status: "added")
      render "index.json.jb"
    else
      render json: "Please sing into your account"
    end
  end



  def create
    @selected_exercise = SelectedExercise.create(
      # exercise_id: 1,
      # user_id: 1,
      # status: "",
      # workout_id: 1,
      # exercise_name: "name"
    )
    render "show.json.jb"
  end

end
