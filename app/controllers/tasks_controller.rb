class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  
  def new
    
    @task = Task.new
    
  end
  
  def edit
    
    @task = Task.find(params[:id])
    
  end
 
  def create
    
    @task = Task.new(task_params)
    if @task.save
      flash[:notice] = "Task created"
      redirect_to task_path(@task)
    else
      render 'new'
    end
  end
  
  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      flash[:notice] = "Task updated"
      redirect_to task_path(@task)
    else
      render 'new'
    end
  end
  
  
    def show
      
      @task = Task.find(params[:id])
    end
    
    def destroy
      @task = Task.find(params[:id])
      @task.destroy
      flash[:notice] = "Task deleted"
      redirect_to tasks_path
    end
    
  private 
   def task_params
     params.require(:task).permit(:labNo)
   end
end