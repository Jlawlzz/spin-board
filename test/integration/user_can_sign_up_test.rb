require 'test_helper'

class UserCanSignInTest < ActionDispatch::IntegrationTest

  test 'user can sign in' do

    visit '/'

    click_link 'sign up'

    fill_in 'username', with: 'jlawlz'
    fill_in 'email', with: 'jlawlz@gmail.com'
    fill_in 'password', with: '123456'
    fill_in 'password confirmation', with: '123456'

    click_on 'create account'

    assert_equal links_path, current_path

  end

  test 'second guest cannot create account with same deets' do

    visit '/'

    click_link 'sign up'

    fill_in 'username', with: 'jlawlz'
    fill_in 'email', with: 'jlawlz@gmail.com'
    fill_in 'password', with: '123456'
    fill_in 'password confirmation', with: '123456'

    click_on 'create account'

    assert_equal links_path, current_path

    visit '/'

    click_link 'sign up'

    fill_in 'username', with: 'jlawlz'
    fill_in 'email', with: 'jlawlz@gmail.com'
    fill_in 'password', with: '123456'
    fill_in 'password confirmation', with: '123456'

    click_on 'create account'

    assert_equal signup_path, current_path

  end

end
