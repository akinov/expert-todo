class TasksController < ApplicationController
  def index
    @tasks = current_user.tasks
  end

  def new
    @task = Project.find(params[:project_id]).tasks.build
  end

  def create
    @task = Task.new(task_create_params)
    project = Project.find(params[:project_id])
    @task.user = current_user
    @task.project = project
    
    if @task.save
      redirect_to project_path(project), notice: 'Making task was succeded.'
    else
      render 'new'
    end
  end

  def show
    @task = current_user.tasks.select{|r|r.id == params[:id].to_i}.first
    raise ActiveRecord::RecordNotFound unless @task
  end

  def edit
    @task = current_user.tasks.select{|r|r.id == params[:id].to_i}.first
    raise ActiveRecord::RecordNotFound unless @task
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_update_params)
      redirect_to project_task_path(@task.project, @task) , notice: 'success for updating task.'
    else
      render 'edit'
    end
  end

  def comple
    @task = Task.find(params[:id])

  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to project_path(@task.project)
  end

  def delete_attached_file
    f = ActiveStorage::Attachment.find(params[:file_id])
    f.purge
    @task = Task.find(params[:id])
    render 'edit'
  end

  private
  def task_create_params
    params.require(:task).permit(:user_id, :title, :description, :start_at, :end_at, :attach_files)
  end

  def task_update_params
    params.require(:task).permit(:user_id, :title, :description, :start_at, :end_at, :state, :attach_files)
  end
end
