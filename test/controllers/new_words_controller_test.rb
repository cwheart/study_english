require 'test_helper'

class NewWordsControllerTest < ActionController::TestCase
  setup do
    @new_word = new_words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_word" do
    assert_difference('NewWord.count') do
      post :create, new_word: {  }
    end

    assert_redirected_to new_word_path(assigns(:new_word))
  end

  test "should show new_word" do
    get :show, id: @new_word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_word
    assert_response :success
  end

  test "should update new_word" do
    patch :update, id: @new_word, new_word: {  }
    assert_redirected_to new_word_path(assigns(:new_word))
  end

  test "should destroy new_word" do
    assert_difference('NewWord.count', -1) do
      delete :destroy, id: @new_word
    end

    assert_redirected_to new_words_path
  end
end
