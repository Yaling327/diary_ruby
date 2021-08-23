class DiaryRubiesController < ApplicationController
  before_action :set_diary_ruby, only: %i[ show edit update destroy ]

  # GET /diary_rubies or /diary_rubies.json
  def index
    @diary_rubies = DiaryRuby.all
  end

  # GET /diary_rubies/1 or /diary_rubies/1.json
  def show
  end

  # GET /diary_rubies/new
  def new
    @diary_ruby = DiaryRuby.new
  end

  # GET /diary_rubies/1/edit
  def edit
  end

  # POST /diary_rubies or /diary_rubies.json
  def create
    @diary_ruby = DiaryRuby.new(diary_ruby_params)

    respond_to do |format|
      if @diary_ruby.save
        format.html { redirect_to @diary_ruby, notice: "Diary ruby was successfully created." }
        format.json { render :show, status: :created, location: @diary_ruby }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diary_ruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diary_rubies/1 or /diary_rubies/1.json
  def update
    respond_to do |format|
      if @diary_ruby.update(diary_ruby_params)
        format.html { redirect_to @diary_ruby, notice: "Diary ruby was successfully updated." }
        format.json { render :show, status: :ok, location: @diary_ruby }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diary_ruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diary_rubies/1 or /diary_rubies/1.json
  def destroy
    @diary_ruby.destroy
    respond_to do |format|
      format.html { redirect_to diary_rubies_url, notice: "Diary ruby was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diary_ruby
      @diary_ruby = DiaryRuby.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diary_ruby_params
      params.require(:diary_ruby).permit(:title, :body)
    end
end
