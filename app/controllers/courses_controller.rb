class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find_by(id: params[:id])
    @meeting = Meeting.find_by(:id => @course.id)
  end

  def new
  end

  def create
    @course = Course.new
    @course.department = params[:department]
    @course.number = params[:number]
    @course.title = params[:title]

    if @course.save
      redirect_to courses_url, notice: "Course created successfully."
    else
      render 'new'
    end
  end

  def edit
    @course = Course.find_by(id: params[:id])
  end

  def update
    @course = Course.find_by(id: params[:id])
    @course.department = params[:department]
    @course.number = params[:number]
    @course.title = params[:title]

    if @course.save
      redirect_to courses_url, notice: "Course updated successfully."
    else
      render 'new'
    end
  end

  def destroy
    @course = Course.find_by(id: params[:id])
    @course.destroy

    redirect_to courses_url, notice: "Course deleted."
  end
end
