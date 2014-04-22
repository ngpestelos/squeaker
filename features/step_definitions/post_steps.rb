When(/^I post the message "(.*?)"$/) do |message|
  user = User.first
  visit "/users/#{user.id}/messages/new"
  fill_in 'Message', with: message
  click_button 'Post'
end
