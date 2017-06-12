class DumbCountersController < ApplicationController
  before_action :set_dumb_counter, only: [:show, :edit, :update, :destroy]

  # GET /dumb_counters
  # GET /dumb_counters.json
  def index
    @dumb_counters = DumbCounter.all
  end

  # GET /dumb_counters/1
  # GET /dumb_counters/1.json
  def show
  end

  # GET /dumb_counters/new
  def new
    @dumb_counter = DumbCounter.new
  end

  # GET /dumb_counters/1/edit
  def edit
  end

  # POST /dumb_counters
  # POST /dumb_counters.json
  def create
    @dumb_counter = DumbCounter.new(dumb_counter_params)

    respond_to do |format|
      if @dumb_counter.save
        format.html { redirect_to @dumb_counter, notice: 'Dumb counter was successfully created.' }
        format.json { render :show, status: :created, location: @dumb_counter }
      else
        format.html { render :new }
        format.json { render json: @dumb_counter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dumb_counters/1
  # PATCH/PUT /dumb_counters/1.json
  def update
    respond_to do |format|
      if @dumb_counter.update(dumb_counter_params)
        format.html { redirect_to @dumb_counter, notice: 'Dumb counter was successfully updated.' }
        format.json { render :show, status: :ok, location: @dumb_counter }
      else
        format.html { render :edit }
        format.json { render json: @dumb_counter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dumb_counters/1
  # DELETE /dumb_counters/1.json
  def destroy
    @dumb_counter.destroy
    respond_to do |format|
      format.html { redirect_to dumb_counters_url, notice: 'Dumb counter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dumb_counter
      @dumb_counter = DumbCounter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dumb_counter_params
      params.require(:dumb_counter).permit(:name, :started_at, :finished_at)
    end
end
