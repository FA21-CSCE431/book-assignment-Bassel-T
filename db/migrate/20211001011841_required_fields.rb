class RequiredFields < ActiveRecord::Migration[6.1]
  def change
    change_column_null :books, :title, false
	change_column_null :books, :author, false
	change_column_null :books, :price, false
	change_column_null :books, :published_date, false
  end
end
