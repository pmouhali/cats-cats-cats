require 'rails_helper' # IMPORTANT
require 'capybara/rspec' # IMPORTANT

RSpec.describe "User account creation", type: :view do


  it "should not create account if data isn't valid" do
    visit new_user_registration_path
    fill_in('reg_name', with: 'Henri')
    fill_in('reg_email', with: 'h@b.com')
    fill_in('reg_pass', with: 'azerty')
    fill_in('reg_pass_confirm', with: 'qwerty')
    click_button 'reg_btn'
    expect(User.count).to eq (0)
  end

  it "should create account if credentials are valid" do
    visit new_user_registration_path
    fill_in('reg_name', with: 'Henri')
    fill_in('reg_email', with: 'h@b.com')
    fill_in('reg_pass', with: 'azerty')
    fill_in('reg_pass_confirm', with: 'azerty')
    click_button 'reg_btn'
    expect(User.count).to eq (1)
  end

  it "should display a flash when log failed" do

    visit new_user_registration_path
    fill_in('reg_name', with: 'Henri')
    fill_in('reg_email', with: 'h@b.com')
    fill_in('reg_pass', with: 'azerty')
    fill_in('reg_pass_confirm', with: 'azerty')
    click_button 'reg_btn'
    # User creation in order to test the log
    visit root_path
    click_link_or_button 'log_out_btn'

    visit new_user_session_path
    fill_in('session_email', with: 'h@b.com') # the @ is missing for testing with wrong credentials
    fill_in('session_pass', with: 'azerty')
    click_button 'session_btn'
    expect(page).to have_no_content('Invalid Email or password')
  end

  it "should display a flash when log succed" do
    visit new_user_session_path
    fill_in('session_email', with: 'h@b.com')
    fill_in('session_pass', with: 'azerty')
    click_button 'session_btn'
    expect(page).to have_content('Signed in successfully')
  end


end
