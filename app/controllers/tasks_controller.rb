class TasksController < ApplicationController

    def index
        tasks = Task.all
        render json: tasks

    end

    def create
        # byebug
        user = User.find_or_create_by(username: task_params[:username])
        task = user.tasks.create(taskname: task_params[:taskname], description: task_params[:description])
        render json: task
    end

    private
    def task_params
        params.permit(:taskname, :description, :username)
    end

end
