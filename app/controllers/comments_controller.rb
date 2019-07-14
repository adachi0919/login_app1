class CommentsController < ApplicationController
  # def index
  #   @users = User.all
  # end

  def index
    user_search = UserSearch.new(params_user_search)
    @users = user_search.execute
  end

  def destroy
    user = User.find(params[:id])
    user.delete
    redirect_to :action => "index"
  end

  def params_user_search
    params.permit(:search_name, :search_email)
  end
end
