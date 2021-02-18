class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts, id: :uuid do |t|
      t.string :titulo
      t.text :descripcion
      t.string :slug
      t.references :user, type: :uuid, foreign_key: true

      t.timestamps
    end
    add_index :posts, :slug, unique: true
  end
end
