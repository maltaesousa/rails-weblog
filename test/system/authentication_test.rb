require 'application_system_test_case'

class AuthenticationTest < ApplicationSystemTestCase
  test 'authentication' do
    visit '/'
    assert_selector 'h1', text: 'Welcome to Weblog'
    
    click_on('Sign Up')
    assert_selector 'h1', text: 'Sign Up'

    fill_in('Name', with: 'John')
    fill_in('Email', with: 'yolo@ftw.ch')
    fill_in('Password', with: 'Wololololo')
    
    click_button('Sign Up')
    
    assert_selector '.flash.notice', text: 'Thank you for signing up!'
    
    click_on('Log In')
    assert_selector 'h1', text: 'Log In'
    fill_in('Email', with: 'yolo@ftw.ch')
    fill_in('Password', with: 'Wololololo')
    
    click_button('Log In')
    assert_selector '.flash.notice', text: 'Logged in!'
  end
end
