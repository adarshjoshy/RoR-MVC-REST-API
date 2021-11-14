class BookController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        @book = Book.new(book_params)

        if @book.save
            render json: {status: '200 OK', data: @book}
        else
            render json: {status: '400 Bad Request', data: @book.errors}
        end
    end
    
    def read
        @book = Book.find(params[:id])
        render json: {status: '200 OK', data:@book}
    end
    
    def list
        @books = Book.all
        render json: {status: '200 OK', data:@books}
    end

    def update
        @book = Book.find(params[:id])
        
        if @book.update(book_params)
            render json: {status: '200 OK', data:@book}
        else
            render json: {status: '400 Bad Request', data:@book.errors}
        end
    end

    def delete
        Book.find(params[:id]).destroy
        render json: {status: '200 OK'}
    end

    private
    def book_params
        params.permit(:B_title, :Author, :Publisher, :Year)
    end

end
