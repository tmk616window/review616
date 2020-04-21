class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(id: :desc)

  end
    
  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to '/tasks'
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    if @task.update!(task_params)
      redirect_to task_url(@task)
    else
      render 'edit'
    end
    
  end
  
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to '/tasks'
    else
      render 'new'
    end
  end
  
  private
  
  
  def task_params
    params.require(:task).permit(:task_id,:user_email,:design,:design_point,:function,:function_point,:plan,:plam_point,:unique,:unique_point,:user_perspective,:user_perspective_point,:recruit,:field,:task_old,:task_pl,:task_tool,:github_url,:work_explain,:study_period,:task_coment,:company_info)
    
  end
end
