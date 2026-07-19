class BookersController < ApplicationController
  def index
    @bookers = Booker.all
    @booker = Booker.new
  end

  def show
    @booker = Booker.find(params[:id])
  end

  def create
    @booker = Booker.new(booker_params)
    if @booker.save
      redirect_to bookers_path, notice: "Book was successfully created."
    else
    @bookers = Booker.order(:id)
    render :index, status: :unprocessable_entity
    end
  end

  def edit
    @booker = Booker.find(params[:id])
  end

  def update
    @booker = Booker.find(params[:id])
    if @booker.update(booker_params)
      redirect_to bookers_path, notice: "Book was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booker = Booker.find(params[:id])
    @booker.destroy
    redirect_to bookers_path, notice: "Book was successfully destroyed."
  end

  private

  def booker_params
    params.require(:booker).permit(:title, :content)
  end
end