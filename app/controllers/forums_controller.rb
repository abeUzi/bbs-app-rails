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


  private
  def create_forum_params
    params.require(:forum).permit(:title,{ :category_ids => [] }, responses_attributes:[:text]).merge(user_id: current_user.id)
  end
end
