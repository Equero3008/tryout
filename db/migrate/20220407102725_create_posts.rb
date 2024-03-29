class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.boolean :published, default: true

      t.timestamps
    end
  end
end
