require 'rails_helper'

 feature 'User index page ', :devise do
   scenario 'user sees own email address' do
     user = FactoryGirl.create(:user,:adnin)
     login_as(user, scope: :user)
     vit user_path
     expect(page).to have_content user.email
   end
 end