class StackController < ApplicationController

  def index
    @projects = Project.all
    @tasks = Stack.all
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    respond_to do |format|
      if Stack.push(@task)
        format.html { redirect_to root_path, notice: 'Task was successfully pushed.' }
        format.json { head :created }
      else
        format.html { redirect_to root_path }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if Stack.pop
        format.html { redirect_to root_path, notice: 'Task was successfully popped.' }
        format.json { head :ok }
      else
        format.html { redirect_to root_path }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def task_params
    params.permit(:project_id, :parent_id, :title)
  end
end
