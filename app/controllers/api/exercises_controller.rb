class Api::ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
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
    if @exercise.save
      render "show.json.jb"
    else
      render json: {errors: @exercise.errors.full_messages}, status: :umprocessable_entity
    end
  end

  # def update
  # end

  # def destroy
  # end

end
