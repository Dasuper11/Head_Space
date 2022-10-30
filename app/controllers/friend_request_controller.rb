class FriendRequestController < ApplicationController

before_action :authenticate_user!, only [ :new, :create, :delete]

def index
  @requests = FriendRequest
end


end
