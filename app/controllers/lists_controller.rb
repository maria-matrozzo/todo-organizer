class ListsController < ApplicationController

    def index
        render json: List.all
    end

    def show
        list = List.find_by(id:params[:id])
        if list
            render json: list
        else
            render json: {error: "List not found"}, status: :not_found
        end
    end

    def create
        new_list = List.new(list_params)
        if new_list.save
            render json: new_list, status: :created
        else
            render json: {error: new_list.errors.full_messages}, status: :unprocessable_entity
        end

    end

    def destroy
        list = List.find_by(id:params[:id])
        if list
            list.destroy
            head :no_content
        else
            render json: {error: "List not found"}, status: :not_found
        end
    end

    private

    def list_params
        params.permit(:title)
    end

end
