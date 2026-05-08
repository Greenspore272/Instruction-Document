class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]

  def index
    @lessons = Lesson.order(:order)
  end

  def show
    @lessons = Lesson.order(:order)
    @current_index = @lessons.index(@lesson)
    @previous_lesson = @lessons[@current_index - 1] if @current_index.positive?
    @next_lesson = @lessons[@current_index + 1] if @current_index < @lessons.size - 1
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
end