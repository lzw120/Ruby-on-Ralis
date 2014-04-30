class MymicropostsController < ApplicationController
  before_action :set_mymicropost, only: [:show, :edit, :update, :destroy]

  # GET /mymicroposts
  # GET /mymicroposts.json
  def index
    @mymicroposts = Mymicropost.all
  end

  # GET /mymicroposts/1
  # GET /mymicroposts/1.json
  def show
  end

  # GET /mymicroposts/new
  def new
    @mymicropost = Mymicropost.new
  end

  # GET /mymicroposts/1/edit
  def edit
  end

  # POST /mymicroposts
  # POST /mymicroposts.json
  def create
    @mymicropost = Mymicropost.new(mymicropost_params)

    respond_to do |format|
      if @mymicropost.save
        format.html { redirect_to @mymicropost, notice: 'Mymicropost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mymicropost }
      else
        format.html { render action: 'new' }
        format.json { render json: @mymicropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mymicroposts/1
  # PATCH/PUT /mymicroposts/1.json
  def update
    respond_to do |format|
      if @mymicropost.update(mymicropost_params)
        format.html { redirect_to @mymicropost, notice: 'Mymicropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mymicropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mymicroposts/1
  # DELETE /mymicroposts/1.json
  def destroy
    @mymicropost.destroy
    respond_to do |format|
      format.html { redirect_to mymicroposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mymicropost
      @mymicropost = Mymicropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mymicropost_params
      params.require(:mymicropost).permit(:content, :user_id)
    end
end
