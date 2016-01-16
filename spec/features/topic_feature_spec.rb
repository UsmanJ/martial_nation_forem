require 'rails_helper'

feature "Topic" do
  context "can be posted" do
    it "if user is signed in" do
      visit('/')
      click_link('Sign up')
      fill_in('Email', with: 'test@example.com')
      fill_in('Password', with: 'testtest')
      fill_in('Password confirmation', with: 'testtest')
      click_button('Sign up')
      click_link('General')
      click_link('Latest News')
      click_link('New topic')
    end
  end
end
