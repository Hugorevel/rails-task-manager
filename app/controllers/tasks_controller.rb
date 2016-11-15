class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    set_task
  end

  def new
    @task = Task.new
  end

  def edit
    set_task
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def update
    set_task
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    set_task
    @task.delete
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end

    def set_task
    @task = Task.find(params[:id])
  end
end
