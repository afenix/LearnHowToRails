class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.number = @lessons.length + 1
    if @lesson.save
      flash[:notice] = "Lesson successfully added!"
      redirect_to lessons_path(@lesson)
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to lessons_path
    else
      render :edit
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    flash[:notice] = "Lesson destruction successfully deployed."
    redirect_to lessons_path
  end

  private
    def lesson_params
      params.require(:lesson).permit(:name, :content)
    end

end
