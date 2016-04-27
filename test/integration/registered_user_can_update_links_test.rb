require 'test_helper'

class RegisteredUserCanUpdateLinksTest < ActionDispatch::IntegrationTest

  test 'registerd user can update links' do

    user = User.create(username: 'bob', email: 'bobby@gmail.com', password: '123456', password_confirmation: '123456')

    2.times do |t|
      Link.create(title: "#{t}title", link_url: "http://www.#{t}.com", user_id: user.id)
    end

    visit '/'

    click_link 'sign in'

    fill_in 'email', with: 'jlawlz@gmail.com'
    fill_in 'password', with: '123456'

    click_on 'sign in'

    ApplicationController.stub_any_instance(:current_user, user) do

      visit links_path

      assert page.has_content?("bob")
      assert page.has_content?("Search")
      assert page.has_content?("link title")
      
    end

  end

end
