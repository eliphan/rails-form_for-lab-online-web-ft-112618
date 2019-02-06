class SchoolClassesController < ApplicationController
  
  def new
    @school_class = SchoolClass.new
  end
  
  def create
    @school_class = SchoolClass.new(school_class_params(:title,:room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end
  
  def show
    @school_class = SchoolClass.find(params[:school_class][:id])
  end
  
  def edit
    @school_class = SchoolClass.find(params[:school_class][:id])
  end
  
  def update
    @school_class = SchoolClass.find(params[:school_class][:id])
    @school_class.update(school_class_params(:title))
    redirect_to school_class_path(@school_class)
  end
  
  private
  
  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
  
end