class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons, id: :uuid do |t|
      t.string :nombre
      t.references :course, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
