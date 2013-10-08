Given /^I not have users$/ do 
  User.all
end

Given /^I am a new, authenticated user$/ do
  @user = User.create!(:email => "renato@user.com",
                   :password => "12345678",
                   :password_confirmation => "12345678")
  @user.save!
end

Given /^I am logged (.+) with (.+)$/ do |email, password|
  step "I go to login" 
  step "I fill in \"Email\" with \"#{email}\""
  step "I fill in \"Password\" with \"#{password}\""
  step "I press \"Sign in\""
end

Given /^Edit account for (.+) with (.+) and (.+)$/ do |email, password, current_password|
  step "I go to edit account"
  step "I fill in \"Email\" with \"#{email}\""
  step "I fill in \"Password\" with \"#{password}\""
  step "I fill in \"user_password_confirmation\" with \"#{password}\""
  step "I fill in \"user_current_password\" with \"#{current_password}\""
  step "I press \"Update\"" 
end
