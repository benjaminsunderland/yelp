feature "visiting the page to create a comment" do
  scenario "it has a text-field to create new comment" do
    createbusiness
    visit('/businesses/1')
    fill_in('comment[commenter]', :with => 'Say What!?')
    fill_in('comment[body]', :with => 'Say, this is a beautiful comment')
    click_button('Create Comment')
  end

  def createbusiness
    name = "booloojis"
    description = "An adventure"
    visit '/businesses/new'
    fill_in "business[name]", with: name
    fill_in "business[description]", with: description
    click_button('Save Business')
  end
end
