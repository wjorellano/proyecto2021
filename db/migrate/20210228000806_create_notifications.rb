class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications, id: :uuid do |t|
      t.references :user, type: :uuid, foreign_key: true
      t.references :item, polymorphic: true, index: true
      t.boolean :viewed, default: false

      t.timestamps
    end
  end
end
