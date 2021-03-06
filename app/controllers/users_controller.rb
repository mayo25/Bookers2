class UsersController < ApplicationController
  def show
     @user = User.find(params[:id])
     @books = @user.books.page(params[:page]).reverse_order
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)  
    if @post_image.save
      redirect_to post_images_path
    else
      render :new
    end
  end
   private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
