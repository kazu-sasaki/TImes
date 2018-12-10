class SectorsController < ApplicationController
  def show
    @time = Time.now
    @chapter = Chapter.find(params[:id])
    @next_chapter = Chapter.where("book_id = #{@chapter.book.id} and id > #{@chapter.id}").minimum('id')
    @back_chapter = Chapter.where("book_id = #{@chapter.book.id} and id < #{@chapter.id}").maximum('id')
 @sector = Sector.where(chapter_id: @chapter.id) 
  end

  def read
    binding.pry
  end

  def edit
    if user_signed_in?
      @userh = User.find(current_user.id)
    end
    @chapter = Chapter.find(params[:id])
      @sector = Sector.where(chapter_id: @chapter.id)
  end

  def update
    @chapter = Chapter.find(params[:id])
    @chapter.update(chapter_params)
  end
 
  def destroy
      @chapter = Chapter.find(params[:id])
    count = 1   
    @read = Read.new(read_count: count, chapter_id: @chapter.id, read_time: Time.now )  
    redirect_to root_path
  end

  private
  def chapter_params
      params.require(:cahpter).permit(:chapter_number,:chapter_title,
         sectors_attributes:[:id, :_destroy, :sector_number, :sector_body, :sector_image],
         reads_attributes:[:id, :_destroy, :read_time, :read_count, :siori]

     )
  end
end
