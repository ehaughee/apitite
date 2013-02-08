class AddUserIdToApis < ActiveRecord::Migration
  def change
    change_table :apis do |t|
      t.integer :user_id
    end
  end
end
