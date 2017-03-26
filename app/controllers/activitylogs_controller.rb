class ActivitylogsController < ApplicationController
  
  def index
    @activitylogs = Activitylog.all
  end
  
  def new
    
    @activitylog = Activitylog.new
    
  end
  
  def edit
    
    @activitylog = Activitylog.find(params[:id])
    
  end
 
  def create
    
    @activitylog = Activitylog.new(activitylog_params)
    if @activitylog.save
      flash[:notice] = "New log created"
      redirect_to activitylog_path(@activitylog)
    else
      render 'new'
    end
  end
  
  def update
    @activitylog = Activitylog.find(params[:id])
    if @activitylog.update(activitylog_params)
      flash[:notice] = "Log updated"
      redirect_to activitylog_path(@activitylog)
    else
      render 'new'
    end
  end
  
  
    def show
      
      @activitylog = Activitylog.find(params[:id])
    end
    
    def destroy
      @activitylog = Activitylog.find(params[:id])
      @activitylog.destroy
      flash[:notice] = "Log deleted"
      redirect_to activitylogs_path
    end
    
  private 
   def activitylog_params
     params.require(:activitylog).permit(:logNunmber)
   end
end