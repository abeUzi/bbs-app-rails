class ForumsController < ApplicationController
  def create
    @forum = Forum.new(create_forum_params)
    @forum.responses.first.user_id = current_user.id

    if @forum.save() then
      redirect_to forum_path(@forum)
    else
      redirect_to :index
    end
  end

  def show
    @forum = Forum.find(params[:id])
  end

  def search
    if params[:keywords] == ""
      redirect_to root_path
    end
    @input = params[:keywords]
    keywords = @input.split(/[[:blank:]]+/)

    if keywords.length != 0 then

        keywords.each_with_index do |w,i|
          if i == 0 then
            @search_forums = Forum.where('title LIKE ?', "%#{w}%")        
          else
            @search_forums = @search_forums.where('title LIKE ?', "%#{w}%")
          end
        end

        keywords.each_with_index do |w,i|
          if i == 0 then
            @search_responses = Response.where('text LIKE ?', "%#{w}%")        
          else
            @search_responses = @search_responses.where('text LIKE ?', "%#{w}%")
          end
        end
    end
  end


  private
  def create_forum_params
    params.require(:forum).permit(:title,{ :category_ids => [] }, responses_attributes:[:text]).merge(user_id: current_user.id)
  end
end
