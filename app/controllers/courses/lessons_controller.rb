class Courses::LessonsController < ApplicationController
  before_action :set_course
  before_action :set_lesson, only: [:edit, :update, :destroy]

  def index
    @lesson = @course.lessons.all
  end

  def new
    @lesson = lesson.new
  end
  
  private

  def set_lesson
    @lesson = @course.lessons.find(params[:id])
  end

  def set_course
    @course = Course.find(params[:course_id])
  end

  def lesson_params
    params.require(:lesson).permit(:nombre)
  end
end
