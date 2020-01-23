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

    def show
        task = Task.find(params[:id])
        render json: task
    end

    def destroy
        task = Task.find(params[:id])
        task.destroy
    end

    private
    def task_params
        params.permit(:taskname, :description, :username)
    end

end
