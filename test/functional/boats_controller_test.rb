require 'test_helper'

class BoatsControllerTest < ActionController::TestCase
  setup do
    @boat = boats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boat" do
    assert_difference('Boat.count') do
      post :create, boat: { desc_clean: @boat.desc_clean, desc_full: @boat.desc_full, extra: @boat.extra, id_md5: @boat.id_md5, location: @boat.location, name: @boat.name, photos_count: @boat.photos_count, photos_urls: @boat.photos_urls, price_eur: @boat.price_eur, price_gbp: @boat.price_gbp, price_listed: @boat.price_listed, price_listed_ccy: @boat.price_listed_ccy, seller_address: @boat.seller_address, seller_name: @boat.seller_name, seller_phone: @boat.seller_phone, site_id: @boat.site_id, site_url: @boat.site_url }
    end

    assert_redirected_to boat_path(assigns(:boat))
  end

  test "should show boat" do
    get :show, id: @boat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boat
    assert_response :success
  end

  test "should update boat" do
    put :update, id: @boat, boat: { desc_clean: @boat.desc_clean, desc_full: @boat.desc_full, extra: @boat.extra, id_md5: @boat.id_md5, location: @boat.location, name: @boat.name, photos_count: @boat.photos_count, photos_urls: @boat.photos_urls, price_eur: @boat.price_eur, price_gbp: @boat.price_gbp, price_listed: @boat.price_listed, price_listed_ccy: @boat.price_listed_ccy, seller_address: @boat.seller_address, seller_name: @boat.seller_name, seller_phone: @boat.seller_phone, site_id: @boat.site_id, site_url: @boat.site_url }
    assert_redirected_to boat_path(assigns(:boat))
  end

  test "should destroy boat" do
    assert_difference('Boat.count', -1) do
      delete :destroy, id: @boat
    end

    assert_redirected_to boats_path
  end
end
