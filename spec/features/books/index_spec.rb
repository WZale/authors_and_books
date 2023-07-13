require "rails_helper"

RSpec.describe "the book's show page", type: :feature do
  before do
    @author = Author.create!(first_name: "David", last_name: "Foster Wallace", dead_white_guy: true, year_of_birth: 1962, country_of_origin: "United States")
    @author_2 = Author.create!(first_name: "Malcom", last_name: "X", dead_white_guy: false, year_of_birth: 1925, country_of_origin: "United States")
    @author_3 = Author.create!(first_name: "Marjane", last_name: "Satrapi", dead_white_guy: false, year_of_birth: 1969, country_of_origin: "Iran")
    @author_4 = Author.create!(first_name: "Ta-Nehisi", last_name: "Coates", dead_white_guy: false, year_of_birth: 1975, country_of_origin: "United States")
    
    @book = @author.books.create!(author_id: 1, title: "Infinite Jest", worth_reading: true, year_published: 1996)
    @book_2 = @author_2.books.create!(author_id: 2, title: "The Autobiography of Malcom X", worth_reading: true, year_published: 1965)
    @book_3 = @author_3.books.create!(author_id: 3, title: "Persepolis", worth_reading: true, year_published: 2000)
    @book_4 = @author_4.books.create!(author_id: 4, title: "The Water Dancer", worth_reading: true, year_published: 2019)
    @book_5 = @author_4.books.create!(author_id: 4, title: "Between the World and Me", worth_reading: true, year_published: 2015)
  end
  
  describe "#index" do
    it "displays the index of books when /books is visited" do
      visit "/books"
  
      expect(page).to have_content(@book.title)
      expect(page).to_not have_content(@author.first_name)
      save_and_open_page
    end
  end

end
