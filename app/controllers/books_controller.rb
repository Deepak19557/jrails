class BooksController < ApplicationController
	skip_before_action :verify_authenticity_token

	def new_book
		@book1 = Book.new	
	end

	def create_book
    @book = Book.create(books_param)
	end

	def update_book
		@books = Book.find params[:id]
    @book = @books.update(books_param)
	end

	def books
    @book1 = Book.new
    @books = Book.all
	end

	def show_book
		
	end

	def edit_book
		@book = Book.find params[:id]
	end

	def delete_book
		
	end

  private

  def books_param
    params.require(:book).permit(:book_name, :author, :available_book)
  end
end
