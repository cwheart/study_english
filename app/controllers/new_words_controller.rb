class NewWordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_new_word, only: [:show, :edit, :update, :destroy]

  # GET /new_words
  # GET /new_words.json
  def index
    @new_word = NewWord.new
    @new_words = current_user.new_words.page(params[:page])
  end

  # GET /new_words/1
  # GET /new_words/1.json
  def show
  end

  # GET /new_words/new
  def new
    @new_word = NewWord.new
  end

  # GET /new_words/1/edit
  def edit
  end

  # POST /new_words
  # POST /new_words.json
  def create
    @new_word = NewWord.new(new_word_params)
    @new_word.user = current_user

    respond_to do |format|
      if @new_word.load_word_by_name and @new_word.save
        format.js { render action: 'show', status: :created, location: @new_word }
        format.html { redirect_to @new_word, notice: 'New word was successfully created.' }
        format.json { render action: 'show', status: :created, location: @new_word }
      else
        format.js { render action: 'new' }
        format.html { render action: 'new' }
        format.json { render json: @new_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_words/1
  # PATCH/PUT /new_words/1.json
  def update
    respond_to do |format|
      if @new_word.update(new_word_params)
        format.html { redirect_to @new_word, notice: 'New word was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @new_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_words/1
  # DELETE /new_words/1.json
  def destroy
    @new_word.destroy
    respond_to do |format|
      format.html { redirect_to new_words_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_word
      @new_word = NewWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_word_params
      params[:new_word]
      params.require(:new_word).permit(:word_name)
    end
end
