class DogsController < ApplicationController
    def index 
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def sort_dogs
        Dog.owners.sort
    end

end
