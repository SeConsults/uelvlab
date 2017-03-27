class VlabsController < ApplicationController
  
  def index
    @vlabs = Vlab.all
  end
  
  def new
    
    @vlab = Vlab.new
    
  end
  
  def edit
    
    @vlab = Vlab.find(params[:id])
    
  end
 
  def create
    
    @vlab = Vlab.new(vlab_params)
    if @vlab.save
      flash[:notice] = "Lab created"
      redirect_to vlab_path(@vlab)
    else
      render 'new'
    end
  end
  
  def update
    @vlab = Vlab.find(params[:id])
    if @vlab.update(vlab_params)
      flash[:notice] = "Lab updated"
      redirect_to vlab_path(@vlab)
    else
      render 'new'
    end
  end
  
  
    def show
      
      @vlab = Vlab.find(params[:id])
    end
    
    def destroy
      @vlab = Vlab.find(params[:id])
      @vlab.destroy
      flash[:notice] = "Lab deleted"
      redirect_to vlabs_path
    end
    
  private 
   def vlab_params
     params.require(:vlab).permit(:title, :instruction, :logfile)
   end
  
end