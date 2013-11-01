class WordCategoriesController < ApplicationController
  before_action :set_word_category, only: [:show, :edit, :update, :destroy]

  # GET /word_categories
  # GET /word_categories.json
  def index
    @word_categories = WordCategory.all
  end

  # GET /word_categories/1
  # GET /word_categories/1.json
  def show
  end

  # GET /word_categories/new
  def new
    @word_category = WordCategory.new
  end

  # GET /word_categories/1/edit
  def edit
  end

  # POST /word_categories
  # POST /word_categories.json
  def create
    @word_category = WordCategory.new(word_category_params)

    respond_to do |format|
      if @word_category.save
        format.html { redirect_to @word_category, notice: 'Word category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @word_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @word_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_categories/1
  # PATCH/PUT /word_categories/1.json
  def update
    respond_to do |format|
      if @word_category.update(word_category_params)
        format.html { redirect_to @word_category, notice: 'Word category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @word_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_categories/1
  # DELETE /word_categories/1.json
  def destroy
    @word_category.destroy
    respond_to do |format|
      format.html { redirect_to word_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_category
      @word_category = WordCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_category_params
      params.require(:word_category).permit(:name)
    end
end
