class TelBooksController < ApplicationController
  before_action :set_tel_book, only: [:show, :edit, :update, :destroy]

  # GET /tel_books
  # GET /tel_books.json
  def index
    @tel_books = TelBook.all
  end

  # GET /tel_books/1
  # GET /tel_books/1.json
  def show
  end

  # GET /tel_books/new
  def new
    @tel_book = TelBook.new
  end

  # GET /tel_books/1/edit
  def edit
  end

  # POST /tel_books
  # POST /tel_books.json
  def create
    @tel_book = TelBook.new(tel_book_params)

    respond_to do |format|
      if @tel_book.save
        format.html { redirect_to @tel_book, notice: 'Tel book was successfully created.' }
        format.json { render :show, status: :created, location: @tel_book }
      else
        format.html { render :new }
        format.json { render json: @tel_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tel_books/1
  # PATCH/PUT /tel_books/1.json
  def update
    respond_to do |format|
      if @tel_book.update(tel_book_params)
        format.html { redirect_to @tel_book, notice: 'Tel book was successfully updated.' }
        format.json { render :show, status: :ok, location: @tel_book }
      else
        format.html { render :edit }
        format.json { render json: @tel_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tel_books/1
  # DELETE /tel_books/1.json
  def destroy
    @tel_book.destroy
    respond_to do |format|
      format.html { redirect_to tel_books_url, notice: 'Tel book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tel_book
      @tel_book = TelBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tel_book_params
      params.require(:tel_book).permit(:first_name, :last_name, :cell)
    end
end
