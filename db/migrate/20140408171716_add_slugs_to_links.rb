class AddSlugsToLinks < ActiveRecord::Migration
  def change
    add_column :links, :slug, :string
  end
end
