class SchoolClassesController < ApplicationController
  
  def new 
  end
  
  def create
    @school_class = SchoolClass.new(school_class_params(:title,:room_number))
  end
  
  def show
  end
  
  def edit 
  end
  
  def update
  end
  
end