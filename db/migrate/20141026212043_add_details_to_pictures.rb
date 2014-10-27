class AddDetailsToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :picture, :string, null: false, default: ""
    add_column :pictures, :name, :string, null: false, default: ""
    add_column :pictures, :description, :text, null: false, default: ""
  end
end
