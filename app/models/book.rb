class Book < ActiveRecord::Base
  require 'googlebooks'
  attr_accessible :title, :authors, :image_link
  
  $BOOK_COUNT    = 40
  $PAGE_COUNT    = 10
  $API_KEY       = 'AIzaSyA1ssxSEUChMJSLjham53CDFThFfnri5Yg'
  $SEARCH_STRING = 'ruby on rails'
  
  def self.reload_books
    books_from_api = []
    (1..$PAGE_COUNT).each do |page_num| 
      books_from_api << GoogleBooks.search( $SEARCH_STRING, {
          :count => $BOOK_COUNT, 
          :page => page_num,
          :api_key => $API_KEY
        }) or raise "Google didn't gave books:("
    end
    unless books_from_api.size.zero?
      transaction do
        self.destroy_all
        books_from_api.each do |books|
          unless books.nil?
            books.each do |book| 
              self.create :title => book.title, :authors => book.authors, :image_link => book.image_link(:zoom => 5)
            end
          end
        end
      end
    end
  end
end
