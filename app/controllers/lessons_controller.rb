class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render :index
  end
end
