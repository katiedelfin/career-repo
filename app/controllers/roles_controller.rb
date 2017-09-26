class RolesController < ApplicationController
  def index
    @roles = current_user.roles
  end

  def new
    @role = current_user.roles.new
  end

  def create
    @role = current_user.roles.create(role_params)

    redirect_to roles_path
  end

  def edit
    @role = current_user.roles.find(params[:id])
  end

  def update
    @role = current_user.roles.find(params[:id])
    @role.update_attributes(role_params)

    redirect_to roles_path
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy

    redirect_to roles_path
  end

  private

  def role_params
    params.require(:role).permit(:title, responsibilities_attributes: [:id, :text, :_destroy])
  end
end
