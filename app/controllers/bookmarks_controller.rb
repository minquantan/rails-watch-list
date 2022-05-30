class BookmarksController < ApplicationController
  def index
    @list_id = params[:list_id]
    @bookmarks = Bookmark.all.where(list_id: @list_id)
    # raise
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to list_path(@bookmark.list)
  end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
    @movie_choices = Movie.all
    @list_choices = List.all
    # raise
  end

  def create
    # raise
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    # raise
    if @bookmark.save
      redirect_to list_path(@list[:id])
    else
      render 'new'
    end
    # raise
  end


  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
