class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def edit
  end

  def new
  end

  def show
  end
end
