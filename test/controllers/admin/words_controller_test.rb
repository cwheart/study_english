require 'test_helper'

class Admin::WordsControllerTest < ActionController::TestCase
  setup do
    @admin_word = admin_words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_word" do
    assert_difference('Admin::Word.count') do
      post :create, admin_word: { name: @admin_word.name }
    end

    assert_redirected_to admin_word_path(assigns(:admin_word))
  end

  test "should show admin_word" do
    get :show, id: @admin_word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_word
    assert_response :success
  end

  test "should update admin_word" do
    patch :update, id: @admin_word, admin_word: { name: @admin_word.name }
    assert_redirected_to admin_word_path(assigns(:admin_word))
  end

  test "should destroy admin_word" do
    assert_difference('Admin::Word.count', -1) do
      delete :destroy, id: @admin_word
    end

    assert_redirected_to admin_words_path
  end
end
