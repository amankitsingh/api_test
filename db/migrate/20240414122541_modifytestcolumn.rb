class Modifytestcolumn < ActiveRecord::Migration[6.1]
  def change
    change_column :tests, :name, :string, :unique => true
  end
end
