class GataPagesController < ApplicationController
  before_action :set_gata_page, only: %i[ show edit update destroy ]

  # GET /gata_pages or /gata_pages.json
  def index
    @gata_pages = GataPage.all
  end

  # GET /gata_pages/1 or /gata_pages/1.json
  def show
  end

  # GET /gata_pages/new
  def new
    @gata_page = GataPage.new
  end

  # GET /gata_pages/1/edit
  def edit
  end

  # POST /gata_pages or /gata_pages.json
  def create
    @gata_page = GataPage.new(gata_page_params)

    respond_to do |format|
      if @gata_page.save
        format.html { redirect_to gata_page_url(@gata_page), notice: "Gata page was successfully created." }
        format.json { render :show, status: :created, location: @gata_page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gata_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gata_pages/1 or /gata_pages/1.json
  def update
    respond_to do |format|
      if @gata_page.update(gata_page_params)
        format.html { redirect_to gata_page_url(@gata_page), notice: "Gata page was successfully updated." }
        format.json { render :show, status: :ok, location: @gata_page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gata_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gata_pages/1 or /gata_pages/1.json
  def destroy
    @gata_page.destroy

    respond_to do |format|
      format.html { redirect_to gata_pages_url, notice: "Gata page was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gata_page
      @gata_page = GataPage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gata_page_params
      params.require(:gata_page).permit(:data)
    end
end
