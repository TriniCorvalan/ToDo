class CreateToDoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :to_do_items do |t|
      t.string :title
      t.boolean :completed, default: false
      t.references :to_do_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
