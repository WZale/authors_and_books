require "rails_helper"

RSpec.describe "the book's show page" do
# User Story 1, Parent Index 

# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system
  it "displays the index of authors" do
    
    author = Author.create!(first_name: "Ta-Nehisi", last_name: "Coates", dead_white_guy: false, year_of_birth: 1975, country_of_origin: "United States")
    book = author.books.create!(author_id: 1, title: "Between the World and Me", worth_reading: true, year_published:2015)
    book_2 = author.books.create!(author_id: 1, title: "The Water Dancer", worth_reading: true, year_published:2019)
    
    visit "/books/#{book.id}"
    
    expect(page).to have_content(book.title)
    expect(page).to_not have_content(book_2.title)
    # localhost:3000/authors/1
  end
  
  it "displays an individual author" do
    # User Story 2, Parent Show 
    
    # As a visitor
    # When I visit '/parents/:id'
    # Then I see the parent with that id including the parent's attributes
    # (data from each column that is on the parent table)
    author = Author.create!(first_name: "Ta-Nehisi", last_name: "Coates", dead_white_guy: false, year_of_birth: 1975, country_of_origin: "United States")
    author_2 = Author.create!(first_name: "Marjane", last_name: "Satrapi", dead_white_guy: false, year_of_birth: 1969, country_of_origin: "Iran")
    
    visit "/authors/#{author.id}"

    expect(page).to have_content(author.first_name)
    expect(page).to_not have_content(author_2.first_name)
  end
end