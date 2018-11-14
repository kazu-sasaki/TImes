class ChaptersController < ApplicationController
  def show
    @chapter = Chapter.find(params[:id])
    @sector = Sector.where(chapter_id: @chapter.id)
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end
end