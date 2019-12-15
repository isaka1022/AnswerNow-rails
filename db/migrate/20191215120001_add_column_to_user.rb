class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :sex, :string
    add_column :users, :faculty, :string
    add_column :users, :subject, :string
    add_column :users, :course, :string
    add_column :users, :labratory, :string
    add_column :users, :club, :string
  end
end
