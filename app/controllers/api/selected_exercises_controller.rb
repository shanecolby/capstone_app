class Api::SelectedExercisesController < ApplicationController
  # before_action: :authenticate_user

  def index
    if current_user
      @selected_exercises = current_user.selected_exercises.where(status: "added")
      render "index.json.jb"
    end
    # else
    #   render json: "Please sign into your account"
    # end
  end



  def create
    @selected_exercise = SelectedExercise.create(
      exercise_id: 1,
      user_id: 1,
      status: "",
      workout_id: 1,
    )
    @selected_exercise.save!

    render "show.json.jb"
  end

end
