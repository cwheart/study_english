require 'test_helper'

class WordCategoriesControllerTest < ActionController::TestCase
  setup do
    @word_category = word_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:word_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create word_category" do
    assert_difference('WordCategory.count') do
      post :create, word_category: { name: @word_category.name }
    end

    assert_redirected_to word_category_path(assigns(:word_category))
  end

  test "should show word_category" do
    get :show, id: @word_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @word_category
    assert_response :success
  end

  test "should update word_category" do
    patch :update, id: @word_category, word_category: { name: @word_category.name }
    assert_redirected_to word_category_path(assigns(:word_category))
  end

  test "should destroy word_category" do
    assert_difference('WordCategory.count', -1) do
      delete :destroy, id: @word_category
    end

    assert_redirected_to word_categories_path
  end
end
