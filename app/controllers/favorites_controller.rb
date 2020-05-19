class FavoritesController < ApplicationController
  def create
    user = User.find(current_user.id)
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to user
  end

  def destroy
    user = User.find(current_user.id)
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'お気に入りから削除しました。'
    redirect_to user

  end
end
