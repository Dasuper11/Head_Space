class HomeController < ApplicationController


  def index
  end

  def new
    @new_fr = FriendRequest.new
  end

  def create
    @new_fr = FriendRequest.new(sender: current_user, recipient: :fr_id)
    if @post.save
      redirect_to :back
    else
      render :new, status: :unprocessable_entity
    end
  end

end
