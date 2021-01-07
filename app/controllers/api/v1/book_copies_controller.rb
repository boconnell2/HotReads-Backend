class Api::V1::BookCopiesController < ApplicationController

    # before_action :find_book_copy, only: [:show, :destroy, :update]
    
    def index
        copies = BookCopy.all
        render json: copies
    end

    def show 
        copy = BookCopy.find(params[:id])
        render json: copy 
    end

    def destroy
        copy = BookCopy.find(params[:id])
        copy.destroy
        render json: copy
    end

    def update 
        copy = BookCopy.find(params[:id])
        copy.update(copy_params)
        render json: copy
    end

    def create
        copy = BookCopy.create(copy_params)
        render json: copy
    end
 

    private

    def find_book_copy
        copy = BookCopy.find(params[:id])
    end

    def copy_params
        params.require(:book_copy).permit(:user_id, :book_id, :condition, :active, :start_date, :due_date, :borrower_id)
    end
end
