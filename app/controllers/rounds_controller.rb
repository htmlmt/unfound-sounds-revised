class RoundsController < ApplicationController
  before_action :set_round, only: [:index, :signup, :participants, :show, :edit, :update, :destroy]
  before_action :require_login, only: [:new, :edit, :create, :update, :destroy]
  before_action :require_admin, only: [:new, :edit, :create, :update, :destroy]

  # GET /rounds
  # GET /rounds.json
  def index
    @rounds = Round.all.order("month DESC")
    @rounds = @rounds - [@round]
  end
  
  def signup
    respond_to do |format|
      if current_user
        @round.users << current_user
        format.html { redirect_to :root }
        format.json { render :show, status: :created, location: @round }
      else
        flash[:notice] = 'Please signup or login before joining a hunt'
        format.html { redirect_to :signup }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def participants
    @users = @round.users
  end
  
  # GET /rounds/1
  # GET /rounds/1.json
  def show
    @gmaps_links = []
    @round.albums.each do |album| 
      album.places.each do |place|
        gmaps_link = place.address + ' ' + place.city + ' ' + place.state
        gmaps_link.gsub!(' ', '+')
        @gmaps_links << gmaps_link
      end
    end
  end

  # GET /rounds/new
  def new
    @round = Round.new
    3.times do
        @album = @round.albums.build
        1.times { @album.places.build }
        5.times { @album.hints.build }
        1.times { @album.build_find }
    end
  end

  # GET /rounds/1/edit
  def edit
    @round.albums.each do |album|
      unless album.find
        1.times { album.build_find }
      end
    end
  end

  # POST /rounds
  # POST /rounds.json
  def create
    @round = Round.new(round_params)
    
    respond_to do |format|
      if @round.save
        format.html { redirect_to @round }
        format.json { render :show, status: :created, location: @round }
      else
        format.html { render :new }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rounds/1
  # PATCH/PUT /rounds/1.json
  def update
    respond_to do |format|
      if @round.update(round_params)
        format.html { redirect_to :root }
        format.json { render :show, status: :ok, location: @round }
      else
        format.html { render :edit }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rounds/1
  # DELETE /rounds/1.json
  def destroy
    @round.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Round was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def require_admin
      if current_user.email != 'michael@unfoundsounds.com'
        redirect_to root_url, alert: 'Sorry, you don\'t have access to that page.'
      end
    end
  
    # Use callbacks to share common setup or constraints between actions.
    def set_round
      if params[:id]
        @round = Round.find(params[:id])
      else
        current_round_finished = false
        finds = []
        upcoming_round = Round.where(month: (Time.zone.now.beginning_of_month + 1.month)).first
        current_round = Round.where(month: Time.zone.now.beginning_of_month).first
        
        if current_round != nil
          current_round.albums.each do |album|
            if album.find != nil
              finds << album
            end
          end
        end
        
        if finds.count == 3
          current_round_finished = true
        end
        
        if upcoming_round != nil && current_round_finished == false
          @round = upcoming_round
          @current_round = false
        else
          @round = current_round
          @current_round = true
        end
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def round_params
      params.require(:round).permit(:month,
      albums_attributes: [:id, :title, :band, :cover, :rdio_link, :found, :link, :link_text, :round_id, :review, :finder, :finder_photo,
        places_attributes: [:id, :teaser, :name, :link, :address, :city, :state, :description, :link_text, :album_id],
        hints_attributes: [:id, :name, :description, :photo, :thumbnail, :album_id],
        find_attributes: [:id, :user_id, :album_id, :photo]
      ])
    end
end
