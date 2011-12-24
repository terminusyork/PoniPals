class PoniesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @pony = @user.ponies.create(params[:pony])
	@pony.color = :color
	@pony.species = :species
	@pony.female = :female
    redirect_to user_path(@user)
  end
   
  def destroy
    @user = User.find(params[:user_id])
    @pony = @user.ponies.find(params[:id])
    @pony.destroy
    redirect_to user_path(@user)
  end

  def update
	@user = User.find(params[:user_id])
    @pony = @user.ponies.find(params[:id])

    respond_to do |format|
      if @pony.update_attributes(params[:pony])
        format.html { redirect_to @user, notice: 'Pony was successfully updated.' }
        format.json { head :ok }
      else

      end
    end
  end	
  
end