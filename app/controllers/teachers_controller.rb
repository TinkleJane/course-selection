class TeachersController < ActionController::Base
  def index
    @teachers = Teacher.all

    render json: @teachers.to_json(:include => :courses)
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
  end
end
