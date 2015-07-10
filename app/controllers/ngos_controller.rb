class NgosController < ApplicationController
  before_action :set_ngo, only: [:show, :edit, :update, :destroy, :users, :delete_user, :add_users]

  # GET /ngos
  # GET /ngos.json
  def index
    @ngos = Ngo.all
  end

  # GET /ngos/1
  # GET /ngos/1.json
  def show
  end

  # GET /ngos/new
  def new
    #@users = User.where.not(:id => current_user.try(:id))
    @ngo = Ngo.new
  end

  # GET /ngos/1/edit
  def edit
    @users = @ngo.users
    @other_users = User.where.not(:id => @users.select(:id))
  end

  # POST /ngos
  # POST /ngos.json
  def create
    @ngo = Ngo.new(ngo_params)
    @ngo.owner = current_user

    respond_to do |format|
      if @ngo.save
        format.html { redirect_to ngos_path, notice: 'Ngo was successfully created.' }
        format.json { render :show, status: :created, location: @ngo }
      else
        format.html { render :new }
        format.json { render json: @ngo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ngos/1
  # PATCH/PUT /ngos/1.json
  def update
    respond_to do |format|
      if @ngo.update(ngo_params)
        format.html { redirect_to @ngo, notice: 'Ngo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ngo }
      else
        format.html { render :edit }
        format.json { render json: @ngo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ngos/1
  # DELETE /ngos/1.json
  def destroy
    @ngo.destroy
    respond_to do |format|
      format.html { redirect_to ngos_url, notice: 'Ngo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def users
    @users = @ngo.users
    render 'users', :layout => nil
  end
  def delete_user
    user = @ngo.users.where(:id => params[:id]).first
    @ngo.users.delete(user.id) if user
    render :nothing => true, :status => 200, :content_type => 'text/html'
  end
  def add_users
    u = User.where(:id => params[:ngo][:user].to_i).first
    if u
      @ngo.users << u
    end
    redirect_to :back, notice: 'user added successfully.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ngo
      @ngo = Ngo.find(params[:ngo_id] || params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ngo_params
      params.require(:ngo).permit(:name, :owner_id, :city, :details, :logo)
    end
end
