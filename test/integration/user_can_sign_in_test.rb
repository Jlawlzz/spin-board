require 'test_helper'

class UserCanSignInTest < ActionDispatch::IntegrationTest

  test 'guest can become a user' do

    visit '/'

    click_link 'sign up'

    fill_in 'username', with: 'jlawlz'
    fill_in 'email', with: 'jlawlz@gmail.com'
    fill_in 'password', with: 123456

    click_on 'create account'

    assert_equal links_path, current_path

  end

end
