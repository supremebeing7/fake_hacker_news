class ChangeLinks < ActiveRecord::Migration
  def change
    remove_column :links, :user_id
    add_column :links, :user_name, :string

  end
end
