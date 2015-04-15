class RoundsController < ApplicationController
  before_action :set_round, only: [:show, :edit, :update, :destroy]

  # GET /rounds
  # GET /rounds.json
  def index
    @rounds = Round.all
  end

  # GET /rounds/1
  # GET /rounds/1.json
  def show
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
        format.html { redirect_to @round }
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
    # Use callbacks to share common setup or constraints between actions.
    def set_round
      if params[:id]
        @round = Round.find(params[:id])
      else
        @round = Round.where("month < ?", Date.today).order("month DESC").first
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def round_params
      params.require(:round).permit(:month,
      albums_attributes: [:id, :title, :band, :cover, :rdio_link, :found, :link, :link_text, :round_id, :review,
        places_attributes: [:id, :teaser, :name, :link, :address, :city, :state, :description, :link_text, :album_id],
        hints_attributes: [:id, :name, :description, :photo, :thumbnail, :album_id],
        find_attributes: [:id, :user_id, :album_id, :photo]
      ])
    end
end
