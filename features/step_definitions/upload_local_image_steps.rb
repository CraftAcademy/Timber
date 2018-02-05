When("I visit new photo page") do
  visit new_photo_path
end

When("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

When("I upload file {string}") do |file_name|
  attach_file('photo[image]', Rails.root + "spec/fixture/#{file_name}")
end

And("I should see {string} image") do |file_name|
  expect(page).to have_css("img[src*='#{file_name}']")
end


Given("I visit the {string} page") do |string|
 visit photos_path
end

Then("I should not see {string} image") do |file_name|
  expect(page).not_to have_css("img[src*='#{file_name}']")
end
