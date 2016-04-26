require 'test_helper'

class UserCanSignUpTest < ActionDispatch::IntegrationTest

  test 'guest can become a user' do

    visit '/'

    click_link 'sign up'

    fill_in 'username', with: 'jlawlz'
    fill_in 'email', with: 'jlawlz@gmail.com'
    fill_in 'password', with: '123456'
    fill_in 'password confirmation', with: '123456'

    click_on 'create account'

    visit '/'

    click_link 'sign in'

    fill_in 'email', with: 'jlawlz@gmail.com'
    fill_in 'password', with: '123456'

    click_on 'sign in'

    assert_equal links_path, current_path

  end

end
