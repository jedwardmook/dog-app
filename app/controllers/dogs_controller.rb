class DogsController < ApplicationController
    
    def index
        dogs= Dog.all
        render json: dogs
    end

    def show
        dog = Dog.find(params[:id])
        render json: dog
    rescue ActiveRecord::RecordNotFound
        render json: "Dog not found", status: :not_found
    end

end
