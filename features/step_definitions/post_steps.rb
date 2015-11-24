Given(/^there are following posts$/) do |table|
  table.hashes.each do |post_params|
    Post.create!(post_params)
  end
end

Given(/^I am on root page$/) do
  visit root_path
end

When(/^pry$/) do
  binding.pry
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end
