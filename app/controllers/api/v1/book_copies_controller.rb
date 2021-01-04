class Api::V1::BookCopiesController < ApplicationController

    def index
        copies = BookCopy.all
        render json: copies
    end

    def show 
        copy = BookCopy.find(params[:id])
        render json: copy 
    end
end