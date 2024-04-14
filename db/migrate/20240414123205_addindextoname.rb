class Addindextoname < ActiveRecord::Migration[6.1]
  def change
    add_index :tests, :name, unique: true
  end
end
