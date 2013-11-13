class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]

    if @student.save
      redirect_to students_url, notice: "Student created successfully."
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]

    if @student.save
      redirect_to students_url, notice: "Student updated successfully."
    else
      render 'new'
    end
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy

    redirect_to students_url, notice: "Student deleted."
  end
end
