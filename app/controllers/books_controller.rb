class BooksController < ApplicationController

	def new_book
		debugger
		@book1 = Book.new	
	end

	def create_book
    @book = Book.create(books_param)
    # if @book.save
    #   redirect_to '/books'
    # else
    #   render 'new_book'
    # end

    # respond_to do |format|
    #   format.
    # end
	end

	def books
    @book1 = Book.new
    @books = Book.all
	end

	def show_book
		
	end

	def edit_book
		
	end

	def delete_book
		
	end

  private

  def books_param
    params.require(:book).permit(:book_name, :author, :available_book)
  end
end
