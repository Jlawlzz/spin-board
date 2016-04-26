# require 'test_helper'
#
# class RegisteredUserCanViewAllLinksTest < ActionDispatch::IntegrationTest
#
#   require "selenium-webdriver"
# 
#   test 'registerd user view all links' do
#
#     Capybara.current_driver = :selenium
#
#
#     user = User.create(username: 'bob', email: 'bobby@gmail.com', password: '123456', password_confirmation: '123456')
#
#     2.times do |t|
#       Link.create(title: "#{t}title", link_url: "http://www.#{t}.com", user_id: user.id)
#     end
#
#     visit '/'
#
#     click_link 'sign in'
#
#     click_on first 'Mark as Read'
#
#     visit links_path
#
#     assert page.has_content? 'Mark as Unread'
#
#   end
#
# end
