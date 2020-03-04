class ResponsesController < ApplicationController
  before_action :authenticate_user!,only:[:create]

  def create
    forum = Forum.find(params[:forum_id])
    @response = forum.responses.new(create_response_params)

    if @response.save then
      redirect_to forum_path(forum)
    else
      redirect_to root_path
    end
  end

  private
  def create_response_params
    params.require(:response).permit(:nickname,:text).merge(user_id: current_user.id)
  end
end
