class Api::SelectedExercisesController < ApplicationController
  # before_action: :authenticate_user

  def index
    # SelectedExercise.where(user_id: current_user.id, status: "selected")
    @selected_exercises = current_user.selected_exercises.where(status: "selected")
    render 'index.json.jb'
  end

  # def index
  #   if current_user
  #     @selected_exercises = current_user.selected_exercises.where(status: "added")
  #     render "index.json.jb"
  #   end
  #   # else
  #   #   render json: "Please sign into your account"
  #   # end
  # end



  def create
    @selected_exercise = SelectedExercise.create(
      exercise_id: params[:exercise_id],
      user_id: current_user.id,
      status: "selected",
      # workout_id: 1,
    )
    @selected_exercise.save

    render "show.json.jb"
  end

  def destroy
    @selected_exercise = SelectedExercise.find_by(id: params[:id])
    @selected_exercise.update(status: "removed")
    render json: {message: "this exercise has been removed"}
  end

end
