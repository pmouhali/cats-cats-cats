require 'rails_helper'
require 'capybara/rspec'

RSpec.describe "Page Devise de création de compte utilisateur", type: :view do

  it "should return 0 user created when creating account with empty attribute" do
    visit new_user_registration_path
    fill_in('reg_name', with: 'Henri') # empty first_name
    fill_in('reg_email', with: 'h@b.com')
    fill_in('reg_pass', with: 'azerty')
    fill_in('reg_pass_conf', with: 'azertu')
    click_button 'reg-btn-submit'
    expect(User.count).to eq (0)
  end

end

=begin
      it "should return 0 when creating account with duplicated email" do
        visit registration_new_path
        fill_in('fn', with: 'Newton') # empty first_name
        fill_in('ln', with: 'Springer')
        fill_in('email', with: 'n@s.com')
        click_button 'new_user_btn'

        visit registration_new_path # retourne sur la page et crée un autre user avec le même email
        fill_in('fn', with: 'Newton2') # empty first_name
        fill_in('ln', with: 'Springer2')
        fill_in('email', with: 'n@s.com')
        click_button 'new_user_btn'
        expect(User.count).to eq (1)
      end
=end
