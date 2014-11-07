class ChangeUsersTable < ActiveRecord::Migration
  def change
    change_table :pictures do |t|
      t.remove :name, :description
      t.rename :user_id, :gallery_id
    end
  end
end
