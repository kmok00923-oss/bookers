class AddContentToBookers < ActiveRecord::Migration[8.0]
  def change
    add_column :bookers, :content, :text
  end
end
