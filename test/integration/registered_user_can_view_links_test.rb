require 'test_helper'

class RegisteredUserCanViewAllLinksTest < ActionDispatch::IntegrationTest

  test 'registerd user view all links' do

    user = User.create(username: 'bob', email: 'bobby@gmail.com', password: '123456', password_confirmation: '123456')

    2.times do |t|
      Link.create(title: "#{t}title", link_url: "http://www.#{t}.com", user_id: user.id)
    end

    visit '/'

    click_link 'sign in'

    fill_in 'email', with: 'jlawlz@gmail.com'
    fill_in 'password', with: '123456'

    click_on 'sign in'

    links = user.links

    assert_equal links[0][:title], '0title'
    assert_equal links[0][:link_url], 'http://www.0.com'

    assert_equal links[1][:title], '1title'
    assert_equal links[1][:link_url], 'http://www.1.com'

  end

end
