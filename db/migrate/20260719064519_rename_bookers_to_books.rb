class RenameBookersToBooks < ActiveRecord::Migration[8.0]
  def change
    rename_table :bookers, :books
    remove_column :books, :content, :text
  end
end
