class Api::WorkoutsController < ApplicationController
  def index
    @workouts = current_user.workouts
    render "index.json.jb"
  end

  def create
    @workout = Workout.new(
      user_id: current_user.id,
      workout_name: params[:workout_name]
    )
    @workout.save!

    render 'show.json.jb'





    # selected_exercises = current_user.selected_exercises.where(status: "selected")

    # @workout = Workout.new(
    #   user_id: current_user.id,
    #   workout_name: params[:workout_name]
    # )

    # @workout.save

    # selected_exercises.each do |se|
    #   se.update(status: "added to workout", workout_id: @workout_id)
    # end
    # render "show.json.jb"
  end

  def show
    @workout = current_user.workouts.find_by(id: params[:id])
    render "show.json.jb"
  end
end
