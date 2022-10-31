class FriendRequestController < ApplicationController

  #before_action :authenticate_user!, only: [ :new, :create, :delete]

  def index
    @sent = current_user.sent_requests
    @recieved = current_user.recieved_requests
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

  def accept

  end

  def delete

  end

end
