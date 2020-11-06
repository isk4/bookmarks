class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.string :name, null: false
      t.string :url, null: false
      t.references :type, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
