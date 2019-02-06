class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  
  def new
    @student = Student.new
  end
  
  def create
    @student = Student.new(student_params(:first_name,:last_name))
    @student.save
    redirect_to student_path(@student)
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  def update
    @student = Student.find(params[:id])
    @student.update(student_params(:title))
    redirect_to student_path(@student)
  end
  
  private
  
  def student_params(*args)
    params.require(:student).permit(*args)
  end
  
end