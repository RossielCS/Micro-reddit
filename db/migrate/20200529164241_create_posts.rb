class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: false
      t.string :title
      t.text :body
      t.integer :user_id

      t.datetime 'created_at'
      t.datetime 'updated_at'


      t.timestamps
    end
  end
end
