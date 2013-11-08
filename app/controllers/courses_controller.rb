class CoursesController < ApplicationController
  before_filter :authenticate_user!

  before_action :set_course, only: [:show, :update, :destroy, :explore, :test]
  before_action :set_quiz, only: [:show, :explore, :test]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if 1==1
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end

  def explore
  end

  def test
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find_by(kee: params[:id])
      @user_course = UserCourse.where(user_id: current_user.id, course_id: @course.id).first
    end

    def set_quiz
      @quiz = Quiz.create(course_id: @course.id, user_course_id: @user_course.id, user_id: current_user.id)
      @quiz_answer = QuizAnswer.new(quiz: @quiz)
      @quiz_answer.quiz_answer_items.build_items
    end
end
