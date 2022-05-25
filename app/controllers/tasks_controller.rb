class TasksController < ApplicationController

    def index
        render json: Task.all
    end

    def create
        new_task = Task.new(task_params)
        if new_task.save
            render json: new_task, status: :created
        else
            render json: {error: new_task.errors.full_messages}, status: :unprocessable_entity
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
        params.permit(:list_id, :description, :status)
    end

end
