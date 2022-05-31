class TasksController < ApplicationController

    def index
        render json: Task.all
    end

    def show
        task = Task.find_by(id:params[:id])
        if task
            render json: task
        else
            render json: {error: "Task not found"}, status: :not_found
        end
    end

    def create
        new_task = Task.new(task_params)
        if new_task.save
            render json: new_task, status: :created
        else
            render json: {error: new_task.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        task = Task.find_by(id:params[:id])
        if task
            task.update(task_params)
            render json: task
        else
            render json: {error: item.errors.full_messages}
        end
    end

    def destroy
        task = Task.find_by(id:params[:id])
        if task
            task.destroy
            head :no_content
        else
            render json: {error: "Task not found"}, status: :not_found
        end
    end

    private
    
    def task_params
        params.permit(:description, :status)
    end

end
