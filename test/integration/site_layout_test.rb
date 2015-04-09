require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href='/home']", '/home', count: 2
    assert_select "a[href='/help']", '/help'
    assert_select "a[href='/about']", '/about'
    assert_select "a[href='/contact']", '/contact'
  end
end
