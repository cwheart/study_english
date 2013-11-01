class Admin::WordsController < Admin::BaseController
  before_action :set_word, only: [:show, :edit, :update, :destroy]

  # GET /admin/words
  # GET /admin/words.json
  def index
    @words = Word.all.page(params[:page])
  end

  # GET /admin/words/1
  # GET /admin/words/1.json
  def show
  end

  # GET /admin/words/new
  def new
    @word = Word.new
  end

  # GET /admin/words/1/edit
  def edit
  end

  # POST /admin/words
  # POST /admin/words.json
  def create
    @word = Word.new(word_params)

    respond_to do |format|
      if @word.save
        format.html { redirect_to [:admin, @word], notice: 'Word was successfully created.' }
        format.json { render action: 'show', status: :created, location: @word }
      else
        format.html { render action: 'new' }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/words/1
  # PATCH/PUT /admin/words/1.json
  def update
    respond_to do |format|
      if @word.update(word_params)
        format.html { redirect_to [:admin, @word], notice: 'Word was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/words/1
  # DELETE /admin/words/1.json
  def destroy
    @word.destroy
    respond_to do |format|
      format.html { redirect_to admin_words_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word
      @word = Word.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_params
      params.require(:word).permit(:name)
    end
end
