class ChangeDataContentToBlogs < ActiveRecord::Migration[5.2]
  def up
    change_column :blogs, :content, :string
  end

  def down
    change_column :blogs, :content, :text
  end
end
