class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.belongs_to :user
      t.string :name, default: "", null: false
      t.text :description, default: "", null: false

      t.timestamps
    end
  end
end
