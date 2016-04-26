# require 'test_helper'
#
# class RegisteredUserCanCreateLinkTest < ActionDispatch::IntegrationTest
#
#   require "selenium-webdriver"
#
#   test 'registerd user can create link' do
#
#     Capybara.current_driver = :selenium
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
#     fill_in 'link title', with: 'google'
#     fill_in 'link url', with: 'http://www.google.com'
#
#     click_on 'submit new link'
#
#     assert page.has_content? 'google'
#     assert page.has_content? 'http://www.google.com'
#
#   end
#
# end
