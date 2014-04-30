class CreateMymicroposts < ActiveRecord::Migration
  def change
    create_table :mymicroposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
