class AddUserToPictures < ActiveRecord::Migration
  def change
    add_reference :pictures, :user, index: true, null: false
  end
end
