class CreateToDoLists < ActiveRecord::Migration[6.0]
  def change
    create_table :to_do_lists do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
