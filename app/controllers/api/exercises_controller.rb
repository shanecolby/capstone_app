class Api::ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    p "current_user"
    p current_user
    p "current_user"

    render "index.json.jb"

  end

  def show
    @exercise = Exercise.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @exercise = Exercise.new(
      name: params[:name],
      focus: params[:focus],
      image_url: params[:image_url]
    )
    @exercise.save!
    render "show.json.jb"
    # else
    #   render json: {errors: @exercise.errors.full_messages}
    # end
  end

  def update
    @exercise = Exercise.find_by(id: params[:id])

    @exercise.name = params[:name] || @exercise.name
    @exercise.focus = params[:focus] || @exercise.focus
    @exercise.image_url = params[:image_url] || @exercise.image_url
    @exercise.save

    render "show.json.jb"
  end

  def destroy
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.destroy
    render json: {message: "Exercise has been removed"}
  end

end
