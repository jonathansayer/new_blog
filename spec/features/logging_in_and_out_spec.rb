require 'rails_helper'

feature 'Signing in ' do
   scenario 'Signing in with correct credentials' do
     Admin.create(first_name: "Jonathan", surname: "Sayer", email: "test@email.com",
                  password: "password", password_confirmation: "password")
     visit '/login'
     fill_in 'Email', with: "test@email.com"
     fill_in 'Password', with: "password"
     click_button "Log in"
     expect(page.current_path).to eq root_path
   end
 end
