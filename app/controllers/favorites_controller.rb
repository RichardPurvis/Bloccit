class FavoritesController < ApplicationController

  def  create
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: @post)
    authorize favorite
    if favorite.save
      flash[:notice] = "This post is now a FAVORITE POST!!!"
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "ERROR: no matter how much you want to, you cannot favorite this post."
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.find(params[:id])
    authorize favorite
    if favorite.destroy
      flash[:notice] = "You hate this post now :)"
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "ERROR: Somthing went wrong and this is still your favorite post."
      redirect_to [@post.topic, @post]
    end
  end
end
