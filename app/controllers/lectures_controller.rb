class LecturesController < ApplicationController
  
  def index
    @lectures = Lecture.all
  end
  
  def new
    
    @lecture = Lecture.new
    
  end
  
  def edit
    
    @lecture = Lecture.find(params[:id])
    
  end
 
  def create
    
    @lecture = Lecture.new(lecture_params)
    if @lecture.save
      flash[:notice] = "Lecture created"
      redirect_to lecture_path(@lecture)
    else
      render 'new'
    end
  end
  
  def update
    @lecture = Lecture.find(params[:id])
    if @lecture.update(lecture_params)
      flash[:notice] = "Lecture updated"
      redirect_to lecture_path(@lecture)
    else
      render 'new'
    end
  end
  
  
    def show
      
      @lecture = Lecture.find(params[:id])
    end
    
    def destroy
      @lecture = Lecture.find(params[:id])
      @lecture.destroy
      flash[:notice] = "Lecture deleted"
      redirect_to lectures_path
    end
    
  private 
   def lecture_params
     params.require(:lecture).permit(:title, :description)
   end
end