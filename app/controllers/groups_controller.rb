class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.order(:id)
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to groups_path, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_role
    # Find the user by email
    email = role_params[:user][:email]
    user = User.find_by_email(email)

    # If they don't exist, invite them
    unless user
      # NOTE: we give them a fake password for now. Eventually we'll use the
      # Devise invitable gem
      user = User.create!(email: email, password: '12345678')
    end

    # Add a role for the user, the current group, and their role type
    @group = Group.find(params[:id])
    role_type = role_params[:role_type]
    role = Role.new(user: user, group: @group, role_type: role_type)

    respond_to do |format|
      if role.save!
        format.html { redirect_to @group, notice: 'User was successfully added to group.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :show, notice: 'There was an error adding the user to the group.' }
        format.json { render json: role.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:title)
    end

    def role_params
      params
        .require(:role)
        .permit(:role_type, user: :email)
    end
end
