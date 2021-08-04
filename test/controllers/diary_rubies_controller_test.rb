require "test_helper"

class DiaryRubiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diary_ruby = diary_rubies(:one)
  end

  test "should get index" do
    get diary_rubies_url
    assert_response :success
  end

  test "should get new" do
    get new_diary_ruby_url
    assert_response :success
  end

  test "should create diary_ruby" do
    assert_difference('DiaryRuby.count') do
      post diary_rubies_url, params: { diary_ruby: { body: @diary_ruby.body, title: @diary_ruby.title } }
    end

    assert_redirected_to diary_ruby_url(DiaryRuby.last)
  end

  test "should show diary_ruby" do
    get diary_ruby_url(@diary_ruby)
    assert_response :success
  end

  test "should get edit" do
    get edit_diary_ruby_url(@diary_ruby)
    assert_response :success
  end

  test "should update diary_ruby" do
    patch diary_ruby_url(@diary_ruby), params: { diary_ruby: { body: @diary_ruby.body, title: @diary_ruby.title } }
    assert_redirected_to diary_ruby_url(@diary_ruby)
  end

  test "should destroy diary_ruby" do
    assert_difference('DiaryRuby.count', -1) do
      delete diary_ruby_url(@diary_ruby)
    end

    assert_redirected_to diary_rubies_url
  end
end
