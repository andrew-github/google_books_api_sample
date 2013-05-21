class CreateBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.column 'title', :string, :null => false
      t.column 'authors', :string, :default => ''
      t.column 'image_link', :string
      
      t.timestamps
    end
  end
end
