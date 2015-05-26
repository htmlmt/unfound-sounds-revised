class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    current_round_finished = false
    finds = []
    upcoming_round = Round.where(month: Date.today.beginning_of_month + 1.month).first
    current_round = Round.where("month <= ?", Date.today).order("month DESC").first
    
    current_round.albums.each do |album|
      if album.find.user != nil
        finds << album
      end
    end
    
    if finds.count == 3 
      current_round_finished = true
    end
    
    if upcoming_round != nil && current_round_finished == true
      @round = upcoming_round
    else
      @round = current_round
    end
    
    if user_params["card_token"] != ""
      user_params.merge(card_token: user_params["card_token"])
    end
    
    @user = User.new(user_params)
    
    respond_to do |format|
      if @user.save
        if @user.card_token
          customer = Stripe::Customer.create email: @user.email, source: @user.card_token
          Stripe::Charge.create customer: customer.id,
                                amount: user_params["amount"] * 100,
                                description: "Vinyl Treasure Hunt",
                                currency: 'usd'
        end
        if @user.email != ""
          UserMailer.signup_confirmation(@user).deliver_now
        end
        @round.users << @user
        session[:user_id] = @user.id
        format.html { redirect_to :root }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end
  
  private
    def set_user
      @user = User.friendly.find(params[:id])
    end
    
    def stripe_params
      params.permit :stripeEmail, :stripeToken
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :username, :album_id, :card_token, :photo, :city)
    end
end