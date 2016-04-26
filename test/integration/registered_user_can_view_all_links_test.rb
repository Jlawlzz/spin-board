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
#     2.times do |t|
#       Link.create(title: "#{t}title", link_url: "http://www.#{t}.com")
#     end
#
#     visit '/'
#
#     click_link 'sign up'
#
#     fill_in 'username', with: 'jlawlz'
#     fill_in 'email', with: 'jlawlz@gmail.com'
#     fill_in 'password', with: '123456'
#     fill_in 'password confirmation', with: '123456'
#
#     click_on 'create account'
#
#     visit links_path
#
#     assert page.has_content? '0title'
#     assert page.has_content? '1title'
#     assert page.has_content? 'http://www.0.com'
#     assert page.has_content? 'http://www.1.com'
#
#   end
#
# end
