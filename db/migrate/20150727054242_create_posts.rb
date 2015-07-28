class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string :name, null: false
      t.string :email, null: false
      t.string :comment
      t.timestamps null: false
    end
  end
end
