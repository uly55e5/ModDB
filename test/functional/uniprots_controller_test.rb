require 'test_helper'

class UniprotsControllerTest < ActionController::TestCase
  setup do
    @uniprot = uniprots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uniprots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uniprot" do
    assert_difference('Uniprot.count') do
      post :create, uniprot: { protein_id: @uniprot.protein_id, uniprot_ac: @uniprot.uniprot_ac }
    end

    assert_redirected_to uniprot_path(assigns(:uniprot))
  end

  test "should show uniprot" do
    get :show, id: @uniprot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uniprot
    assert_response :success
  end

  test "should update uniprot" do
    put :update, id: @uniprot, uniprot: { protein_id: @uniprot.protein_id, uniprot_ac: @uniprot.uniprot_ac }
    assert_redirected_to uniprot_path(assigns(:uniprot))
  end

  test "should destroy uniprot" do
    assert_difference('Uniprot.count', -1) do
      delete :destroy, id: @uniprot
    end

    assert_redirected_to uniprots_path
  end
end
