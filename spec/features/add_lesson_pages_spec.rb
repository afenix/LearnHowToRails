require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on 'Create new lesson'
    expect(page).to have_content 'Lesson'
  end

end
