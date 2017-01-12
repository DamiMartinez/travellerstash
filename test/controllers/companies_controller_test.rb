require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { angellist_url: @company.angellist_url, category_name: @company.category_name, country: @company.country, crunchbase_url: @company.crunchbase_url, des_long: @company.des_long, des_short: @company.des_short, is_featured: @company.is_featured, is_member: @company.is_member, is_new: @company.is_new, logo_src: @company.logo_src, name_text: @company.name_text, name_url: @company.name_url, rank: @company.rank, tags: @company.tags, url: @company.url }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: { angellist_url: @company.angellist_url, category_name: @company.category_name, country: @company.country, crunchbase_url: @company.crunchbase_url, des_long: @company.des_long, des_short: @company.des_short, is_featured: @company.is_featured, is_member: @company.is_member, is_new: @company.is_new, logo_src: @company.logo_src, name_text: @company.name_text, name_url: @company.name_url, rank: @company.rank, tags: @company.tags, url: @company.url }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
