class Admin::CoursesController < Admin::BaseController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /admin/courses
  # GET /admin/courses.json
  def index
    @courses = Course.all
  end

  # GET /admin/courses/1
  # GET /admin/courses/1.json
  def show
  end

  # GET /admin/courses/new
  def new
    @course = Course.new
  end

  # GET /admin/courses/1/edit
  def edit
  end

  # POST /admin/courses
  # POST /admin/courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render action: 'show', status: :created, location: @course }
      else
        format.html { render action: 'new' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/courses/1
  # PATCH/PUT /admin/courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/courses/1
  # DELETE /admin/courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to admin_courses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name)
    end
end
