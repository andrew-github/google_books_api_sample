class FillBooksWithSampleData < ActiveRecord::Migration
  def change
    Book.create(:title => 'Beginning Ruby on Rails', :authors => 'Steve Holzner, Ph.D.', :image_link => 'http://bks9.books.google.com/books?id=BaWayIR0CvkC&printsec=frontcover&img=1&zoom=5&edge=none&source=gbs_api') 
    Book.create(:title => 'Beginning Ruby on Rails E-Commerce: From Novice to Professional', :authors => 'Jarkko Laine, Christian Hellsten', :image_link => 'http://bks2.books.google.com/books?id=o0JuxK5_1esC&printsec=frontcover&img=1&zoom=5&edge=none&source=gbs_api') 
    Book.create(:title => 'Professional Ruby on Rails', :authors => '', :image_link => 'http://bks1.books.google.com/books?id=aB4B13xGEv4C&printsec=frontcover&img=1&zoom=5&edge=none&source=gbs_api') 
    Book.create(:title => 'Practical Reporting with Ruby and Rails', :authors => 'David Berube', :image_link => 'http://bks5.books.google.com/books?id=H1yi3htEAZgC&printsec=frontcover&img=1&zoom=5&edge=none&source=gbs_api') 
    Book.create(:title => 'Ruby on Rails For Dummies', :authors => 'Barry Burd', :image_link => 'http://bks7.books.google.com/books?id=6qBu7FYe3UgC&printsec=frontcover&img=1&zoom=5&edge=none&source=gbs_api') 
    Book.create(:title => 'Rails Solutions: Ruby on Rails Made Easy', :authors => 'Justin Williams', :image_link => 'http://bks3.books.google.com/books?id=0MEn8moAsYQC&printsec=frontcover&img=1&zoom=5&edge=none&source=gbs_api') 
    Book.create(:title => 'Head First Rails: A Learner\'s Companion to Ruby on Rails', :authors => 'David Griffiths', :image_link => 'http://bks3.books.google.com/books?id=jMCO096qlRsC&printsec=frontcover&img=1&zoom=5&edge=none&source=gbs_api') 
    Book.create(:title => 'Ruby on Rails: Up and Running: Up and Running', :authors => 'Bruce A. Tate, Curt Hibbs', :image_link => 'http://bks7.books.google.com/books?id=JJ7SHIRDfOcC&printsec=frontcover&img=1&zoom=5&edge=none&source=gbs_api') 
    Book.create(:title => 'Service-Oriented Design with Ruby and Rails', :authors => 'Paul Dix', :image_link => 'http://bks3.books.google.com/books?id=Q2DhEPqREYQC&printsec=frontcover&img=1&zoom=5&edge=none&source=gbs_api') 
    Book.create(:title => 'Ruby on Rails for PHP and Java Developers', :authors => '', :image_link => 'http://bks4.books.google.com/books?id=Tqi9EIfi6skC&printsec=frontcover&img=1&zoom=5&edge=none&source=gbs_api')
  end
end
