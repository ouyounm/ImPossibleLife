class ClassifiedsController < ApplicationController
  before_action :set_classified, only: [:show, :edit, :update, :destroy]

  # GET /classifieds
  # GET /classifieds.json
  def index
    @classifieds = Classified.all
  end

  # GET /classifieds/1
  # GET /classifieds/1.json
  def show
  end

  # GET /classifieds/new
  def new
    @classified = Classified.new
  end

  # GET /classifieds/1/edit
  def edit
  end

  # POST /classifieds
  # POST /classifieds.json
  def create
    @classified = Classified.new(classified_params)

    respond_to do |format|
      if @classified.save
        format.html { redirect_to @classified, notice: 'Classified was successfully created.' }
        format.json { render action: 'show', status: :created, location: @classified }
      else
        format.html { render action: 'new' }
        format.json { render json: @classified.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classifieds/1
  # PATCH/PUT /classifieds/1.json
  def update
    respond_to do |format|
      if @classified.update(classified_params)
        format.html { redirect_to @classified, notice: 'Classified was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @classified.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classifieds/1
  # DELETE /classifieds/1.json
  def destroy
    @classified.destroy
    respond_to do |format|
      format.html { redirect_to classifieds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classified
      @classified = Classified.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classified_params
      params.require(:classified).permit(:title, :date_posted, :picture, :price, :address, :phone_number, :email, :description, :summary_point_1, :summary_point_2, :summary_point_3)
    end
end
