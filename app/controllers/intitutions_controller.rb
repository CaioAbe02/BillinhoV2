class IntitutionsController < ApplicationController
  before_action :set_intitution, only: %i[ show edit update destroy ]

  # GET /intitutions or /intitutions.json
  def index
    @intitutions = Intitution.all
  end

  # GET /intitutions/1 or /intitutions/1.json
  def show
  end

  # GET /intitutions/new
  def new
    @intitution = Intitution.new
  end

  # GET /intitutions/1/edit
  def edit
  end

  # POST /intitutions or /intitutions.json
  def create
    @intitution = Intitution.new(intitution_params)

    respond_to do |format|
      if @intitution.save
        format.html { redirect_to intitution_url(@intitution), notice: "Intitution was successfully created." }
        format.json { render :show, status: :created, location: @intitution }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @intitution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intitutions/1 or /intitutions/1.json
  def update
    respond_to do |format|
      if @intitution.update(intitution_params)
        format.html { redirect_to intitution_url(@intitution), notice: "Intitution was successfully updated." }
        format.json { render :show, status: :ok, location: @intitution }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @intitution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intitutions/1 or /intitutions/1.json
  def destroy
    @intitution.destroy

    respond_to do |format|
      format.html { redirect_to intitutions_url, notice: "Intitution was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intitution
      @intitution = Intitution.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def intitution_params
      params.require(:intitution).permit(:name, :cnpj, :institution_type)
    end
end
