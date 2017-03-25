class LessonsController < ApplicationController
  
  def new
    
    @lesson = Lesson.new
    
  end
 
  def create
    
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      flash[:notice] = "Lesson created"
      redirect_to lesson_path(@lesson)
    else
      render 'new'
    end
  end
    def show
      
      @lesson = Lesson.find(params[:id])
      
    end
  private 
   def lesson_params
     params.require(:lesson).permit(:title, :description)
   end
  
end