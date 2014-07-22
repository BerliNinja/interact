require 'test_helper'

class InteractionsControllerTest < ActionController::TestCase
  setup do
    @interaction = interactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interaction" do
    assert_difference('Interaction.count') do
      post :create, interaction: { description: @interaction.description, interacted: @interaction.interacted, interaction: @interaction.interaction, interactor: @interaction.interactor, picture: @interaction.picture }
    end

    assert_redirected_to interaction_path(assigns(:interaction))
  end

  test "should show interaction" do
    get :show, id: @interaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interaction
    assert_response :success
  end

  test "should update interaction" do
    patch :update, id: @interaction, interaction: { description: @interaction.description, interacted: @interaction.interacted, interaction: @interaction.interaction, interactor: @interaction.interactor, picture: @interaction.picture }
    assert_redirected_to interaction_path(assigns(:interaction))
  end

  test "should destroy interaction" do
    assert_difference('Interaction.count', -1) do
      delete :destroy, id: @interaction
    end

    assert_redirected_to interactions_path
  end
end
