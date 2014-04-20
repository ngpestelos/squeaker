Given /^there is a User$/ do
  FactoryGirl.create(:user)
end

Given /^the User has posted the message "([^"]*)"$/ do |message_text|
  expect(User.count).to equal 1
  FactoryGirl.create(:message, content: message_text, user: User.first)
end
