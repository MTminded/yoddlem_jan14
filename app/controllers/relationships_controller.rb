class RelationshipsController < ApplicationController
  #The line below is causing 
  #before_filter :signed_in_user
  before_filter :verify_user
  respond_to :html, :js, :json

  def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    respond_with(@user)
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
    respond_with(@user)
  end
end