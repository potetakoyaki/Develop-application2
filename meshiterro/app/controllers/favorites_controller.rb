class FavoritesController < ApplicationController
  def create
    post_image = PostImage.find(params[:post_image_id])
    favorites = current_user.favorites.new(post_image_id: post_image.id)
    favorites.save
    redirect_to post_image_path(post_image)  
  end

  def destroy
    post_image = PostImage.find(params[:post_image_id])
    favorites = current_user.favorites.find_by(post_image_id: post_image.id)
    favorites.destroy
    redirect_to post_image_path(post_image)  
  end
end