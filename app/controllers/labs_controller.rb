class LabsController < ApplicationController
  
  def index
    @labs = Lab.all
  end
  
  def new
    
    @lab = Lab.new
    
  end
  
  def edit
    
    @lab = Lab.find(params[:id])
    
  end
 
  def create
    
    @lab = Lab.new(lab_params)
    if @lab.save
      flash[:notice] = "Lab created"
      redirect_to lab_path(@lab)
    else
      render 'new'
    end
  end
  
  def update
    @lab = Lab.find(params[:id])
    if @lab.update(lab_params)
      flash[:notice] = "Lab updated"
      redirect_to lab_path(@lab)
    else
      render 'new'
    end
  end
  
  
    def show
      
      @lab = Lab.find(params[:id])
    end
    
    def destroy
      @lab = Lab.find(params[:id])
      @lab.destroy
      flash[:notice] = "Lab deleted"
      redirect_to labs_path
    end
    
  private 
   def lab_params
     params.require(:lab).permit(:sessionNo)
   end
end