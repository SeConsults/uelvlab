class LessonsController < ApplicationController
  
  def new
    
    @lesson = Lesson.new
    
  end
  def create
    
    #render plain: params[:lesson].inspect
    @lesson = Lesson.new(lesson_params)
    @lesson.save
    redirect_to lesson_show(@lesson)
  
  end
  
  private 
   def lesson_params
     
     params.require(:lesson).permit(:title, :description)
   end
  
end